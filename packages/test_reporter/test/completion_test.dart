import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:test/test.dart';
import 'package:test_reporter/test_reporter.dart';

import '../bin/test_reporter.dart' as cli;

Future<void> main() async {
  if (Platform.environment['TEST_REPORTER_COMPLETION_WORKER'] != '1') {
    final library = await Isolate.resolvePackageUri(
      Uri.parse('package:test_reporter/test_reporter.dart'),
    );
    final source =
        library!.resolve('../test/completion_test.dart').toFilePath();

    test('completion regression in an isolated process', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['test', source],
        workingDirectory: library.resolve('..').toFilePath(),
        environment: {'TEST_REPORTER_COMPLETION_WORKER': '1'},
      );
      expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
    });

    for (final fails in [false, true]) {
      test('CLI preserves test status: fails=$fails', () async {
        final directory = await Directory.systemTemp.createTemp('cli-test');
        final fixture = File('${directory.path}/fixture_test.dart');
        await fixture.writeAsString(
          "import 'package:test/test.dart';\n"
          "void main() { test('result', () { ${fails ? "fail('expected');" : ''} }); }\n",
        );

        try {
          final result = await Process.run(
            Platform.resolvedExecutable,
            [
              library.resolve('../bin/test_reporter.dart').toFilePath(),
              '--',
              'dart',
              'test',
              fixture.path,
            ],
            workingDirectory: library.resolve('..').toFilePath(),
          );
          expect(result.exitCode, fails ? 1 : 0,
              reason: '${result.stdout}\n${result.stderr}');
        } finally {
          await directory.delete(recursive: true);
        }
      });
    }

    return;
  }

  for (final mode in ['success', 'error', 'exit']) {
    test('isolate completion: $mode', () async {
      final original = Directory.current;
      final directory = await Directory.systemTemp.createTemp('reporter-test');
      final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      await Directory('${directory.path}/test').create();
      await File('${directory.path}/test/reporter.dart').writeAsString(r'''
import 'dart:io';
import 'package:test_reporter/test_reporter.dart';

TestReporter createReporter(List<String> args) => DelayedReporter(args);

class DelayedReporter implements TestReporter {
  final List<String> args;
  bool finished = false;

  DelayedReporter(this.args);

  Future<void> onEvent(TestEvent event) async {
    final socket = await Socket.connect('127.0.0.1', int.parse(args.first));
    socket.write(event is TestExitEvent ? 'exit:$finished\n' : 'event\n');
    await socket.first;
    finished = true;
    socket.destroy();

    if (event is TestExitEvent && args.last == 'error') {
      throw StateError('reporter failed');
    }

    if (event is TestExitEvent && args.last == 'exit') {
      exit(0);
    }
  }
}
''');
      Directory.current = directory;
      cli.ReporterSession? session;
      final connections = StreamIterator(server);

      try {
        session = await cli.createReporter(null, ['${server.port}', mode]);
        var completed = false;
        unawaited(session.completed.then((_) => completed = true));
        session.port
            .send(jsonEncode(const TestAllSuitesEvent(count: 1, time: 0)));
        session.port
            .send(jsonEncode(const TestExitEvent(exitCode: 7, time: 1)));
        expect(await connections.moveNext(), isTrue);
        final first = connections.current;
        expect(
            await utf8.decoder
                .bind(first)
                .transform(const LineSplitter())
                .first,
            'event');
        expect(completed, isFalse);
        first.write('release');
        await first.flush();
        expect(await connections.moveNext(), isTrue);
        final last = connections.current;
        expect(
            await utf8.decoder.bind(last).transform(const LineSplitter()).first,
            'exit:true');
        expect(completed, isFalse);
        last.write('release');
        await last.flush();
        final error = await session.completed;

        if (mode == 'success') {
          expect(error, isNull);
        } else {
          expect(
              error,
              contains(
                  mode == 'error' ? 'reporter failed' : 'before completing'));
        }
      } finally {
        await session?.close();
        await connections.cancel();
        await server.close();
        Directory.current = original;
        await directory.delete(recursive: true);
      }
    });
  }
}
