import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:ansicolor/ansicolor.dart';
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

  final (isolate, reporterPort, reporterDone) = await createReporter(
    reporter,
    args,
  );

  await for (final event in events.handleError(_printRunnerError)) {
    reporterPort.send(jsonEncode(event.toJson()));

    if (event is TestExitEvent) {
      final reported = await reporterDone;
      exitCode = event.exitCode == 0 && !reported ? 1 : event.exitCode;

      return;
    }
  }

  isolate.kill();
  await reporterDone;
  exitCode = 1;
}

void _printRunnerError(Object error) {
  final pen = AnsiPen()..red(bold: false);
  print(pen(error));
}

Future<(Isolate, SendPort, Future<bool>)> createReporter(
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
          _ => "import 'package:test_reporter/basic_reporter.dart';"
        }
      : "";

  final code = '''
import 'dart:isolate';
import 'dart:async';
import 'dart:convert';

import 'package:test_reporter/test_reporter.dart';
$importLine
$customImportLine

Future<void> main(List<String> args, SendPort sendPort) async {
  await runZoned(
    () async {
      final reporter = ${customImportLine.isNotEmpty ? 'e1.$method(${hasArgs ? 'args' : ''})' : 'createReporter(args)'};
      final port = ReceivePort();
      sendPort.send(port.sendPort);

      try {
        await for (final message in port) {
          final event = TestEvent.fromJson(jsonDecode(message));
          await reporter.onEvent(event);

          if (event is TestExitEvent) break;
        }
      } finally {
        port.close();
      }
    },
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) => sendPort.send(line),
    ),
  );

  Isolate.exit();
}
''';

  String absoluteFilePath = File(
    p.join(tempDir.path, '_reporter_temp_.dart'),
  ).absolute.path;

  /// Ensure the parent directory exists
  Directory(p.dirname(absoluteFilePath)).createSync(recursive: true);
  final File tempFile = File(absoluteFilePath);
  await tempFile.writeAsString(code);

  final receivePort = ReceivePort();
  final ready = Completer<SendPort>();
  final done = Completer<bool>();
  var success = true;

  try {
    final isolate = await Isolate.spawnUri(
      Uri.file(tempFile.path),
      args,
      receivePort.sendPort,
      onError: receivePort.sendPort,
      onExit: receivePort.sendPort,
    );

    receivePort.listen((message) {
      switch (message) {
        case SendPort port:
          ready.complete(port);
        case List error:
          success = false;
          stderr.writeln(error.join('\n'));
        case null:
          receivePort.close();
          done.complete(success);

          if (!ready.isCompleted) {
            ready.completeError(StateError('Reporter exited before starting'));
          }
        default:
          print(message.toString());
      }
    });

    return (isolate, await ready.future, done.future);
  } catch (_) {
    receivePort.close();
    rethrow;
  } finally {
    await tempDir.delete(recursive: true);
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
