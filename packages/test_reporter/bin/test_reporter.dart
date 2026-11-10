import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:test_reporter/src/args/arg_parser.dart';
import 'package:test_reporter/src/model/models.dart';
import 'package:test_reporter/src/runner/test_runner.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  final parser = buildArgParser();
  final results = parser.parse(args);
  final command = results.rest.contains('--')
      ? results.rest.skipWhile((value) => value != '--').skip(1)
      : results.rest;

  final reporter = results.option('reporter');

  if (command.isEmpty) {
    throw ArgumentError("No command was passed. Dart command was expected");
  }

  final testArgs = command
      .where((element) => !{'flutter', 'dart', 'test'}.contains(element))
      .toList();

  final Stream<TestEvent> events;
  switch (command.first) {
    case 'flutter':
      events = flutterTest(arguments: testArgs);

    default:
      events = dartTest(arguments: testArgs);
  }

  final reporterSession = await createReporter(reporter, args);
  final testExited = Completer<int>();
  events.listen(
    (event) {
      reporterSession.port.send(jsonEncode(event.toJson()));

      if (event is TestExitEvent) {
        testExited.complete(event.exitCode);
      }
    },
    onError: (Object error) => stderr.writeln(error),
    onDone: () {
      if (!testExited.isCompleted) {
        testExited.completeError(
          StateError('Test process ended without an exit event.'),
        );
      }
    },
  );

  try {
    final testExitCode = await testExited.future;
    final error = await reporterSession.completed;

    if (error != null) {
      stderr.writeln(error);
    }

    exitCode = testExitCode != 0 ? testExitCode : (error == null ? 0 : 1);
  } finally {
    await reporterSession.close();
  }

  exit(exitCode);
}

class ReporterSession {
  final Isolate isolate;
  final SendPort port;
  final Future<String?> completed;
  final Future<void> Function() close;

  ReporterSession({
    required this.isolate,
    required this.port,
    required this.completed,
    required this.close,
  });
}

Future<ReporterSession> createReporter(
  String? reporter,
  List<String> args,
) async {
  final Directory tempDir = Directory.systemTemp.createTempSync();

  final (customImportLine, method, hasArgs) =
      await getCustomReporterImport(as: 'e1', path: tempDir.path) ??
          ('', '', false);

  final importLine = customImportLine.isEmpty
      ? switch (reporter) {
          String package when package.contains('/') =>
            "import 'package:$package.dart';",
          String package => "import 'package:$package/$package.dart';",
          _ => "import 'package:test_reporter/basic_reporter.dart';",
        }
      : "";

  final code = '''
import 'dart:io';
import 'dart:isolate';
import 'dart:async';
import 'dart:convert';

import 'package:test_reporter/test_reporter.dart';
$importLine
$customImportLine

Future<void> main(List<String> args, SendPort sendPort) async {
  await runZoned(
    () async {
      final port = ReceivePort();

      try {
        final reporter = ${customImportLine.isNotEmpty ? 'e1.$method(${hasArgs ? 'args' : ''})' : 'createReporter(args)'};
        sendPort.send(port.sendPort);

        await for (final message in port) {
          final event = TestEvent.fromJson(jsonDecode(message));
          await reporter.onEvent(event);

          if (event is TestExitEvent) {
            sendPort.send({'done': true});
            break;
          }
        }
      } catch (error, stack) {
        sendPort.send({'error': '\$error\\n\$stack'});
      } finally {
        port.close();
      }
    },
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) => sendPort.send(line),
    ),
  );
}
''';

  String absoluteFilePath =
      File(p.join(tempDir.path, '_reporter_temp_.dart')).absolute.path;

  /// Ensure the parent directory exists
  Directory(p.dirname(absoluteFilePath)).createSync(recursive: true);
  final File tempFile = File(absoluteFilePath);
  await tempFile.writeAsString(code);

  final receivePort = ReceivePort();
  final ready = Completer<SendPort>();
  final completed = Completer<String?>();

  void fail(String error) {
    if (!ready.isCompleted) {
      ready.completeError(StateError(error));
    }

    if (!completed.isCompleted) {
      completed.complete(error);
    }
  }

  receivePort.listen((message) {
    if (message is SendPort) {
      ready.complete(message);
    } else if (message is Map) {
      if (message['error'] case String error) {
        fail(error);
      } else if (!completed.isCompleted) {
        completed.complete(null);
      }
    } else if (message is List) {
      fail('Reporter isolate failed: $message');
    } else if (message == null) {
      if (!completed.isCompleted) {
        fail('Reporter isolate exited before completing reports.');
      }
    } else {
      print(message);
    }
  });

  Future<void> cleanup() async {
    receivePort.close();
    await tempDir.delete(recursive: true);
  }

  Isolate? isolate;

  try {
    isolate = await Isolate.spawnUri(
      Uri.file(tempFile.path),
      args,
      receivePort.sendPort,
      onError: receivePort.sendPort,
      onExit: receivePort.sendPort,
    );
    final port = await ready.future;

    return ReporterSession(
      isolate: isolate,
      port: port,
      completed: completed.future,
      close: () async {
        isolate?.kill();
        await cleanup();
      },
    );
  } catch (_) {
    isolate?.kill();
    await cleanup();

    rethrow;
  }
}

Future<(String, String, bool)?> getCustomReporterImport({
  String as = '',
  String path = '',
}) async {
  final customReporter = File(p.join('test', 'reporter.dart'));
  String relativePath = _posixRelative(
    customReporter.absolute.path,
    from: path,
  );

  /// Get the absolute path and replace '\' with '\\'
  final sanitizedPath = relativePath.replaceAll(r'\', r'\\');
  final customReporterImportLine =
      "import '$sanitizedPath'${as.isNotEmpty ? 'as $as' : ''};";

  if (!await customReporter.exists()) return null;

  final content = await customReporter.readAsString();
  final regexp = RegExp(
    r'TestReporter ([a-zA-Z][a-zA-Z\d_]+)\((List<String> [a-zA-Z][a-zA-Z\d_]+)?\)',
  );

  final matches = regexp.firstMatch(content);
  final methodName = matches?.group(1);
  final hasArgs = matches?.group(2) != null;

  if (methodName != null) {
    return (customReporterImportLine, methodName, hasArgs);
  }

  return null;
}

/// This creates a relative path from `from` to `input`, the output being a
/// posix path on all platforms.
///
/// by talel briki 15/05/2025
String _posixRelative(String input, {String from = ""}) {
  // Use the appropriate context for Windows
  final p.Context context = p.Context(style: p.Style.windows);

  // Ensure the input and "from" paths are absolute
  final String absInputPath = File(input).absolute.path;
  final String absFromPath = Directory(from).absolute.path;

  // Print the resolved absolute paths

  // Compute the relative path
  final String relativePath = context.relative(absInputPath, from: absFromPath);

  return relativePath;
}
