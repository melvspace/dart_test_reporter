import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:allure_report/allure_report.dart';
import 'package:allure_report/src/test_report.dart';
import 'package:test/test.dart';
import 'package:test_reporter/test_reporter.dart';

class GatedReporter extends AllureReporter {
  final entered = Completer<void>();
  final release = Completer<void>();

  @override
  Future<void> onReportCreated(TestReport report) async {
    entered.complete();
    await release.future;
    await super.onReportCreated(report);
  }
}

Future<void> main() async {
  if (Platform.environment['ALLURE_REPORT_COMPLETION_WORKER'] != '1') {
    final library = await Isolate.resolvePackageUri(
      Uri.parse('package:allure_report/allure_report.dart'),
    );
    final source =
        library!.resolve('../test/allure_report_test.dart').toFilePath();

    test('completion regression in an isolated process', () async {
      final result = await Process.run(
        Platform.resolvedExecutable,
        ['test', source],
        workingDirectory: library.resolve('..').toFilePath(),
        environment: {'ALLURE_REPORT_COMPLETION_WORKER': '1'},
      );
      expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
    });

    return;
  }

  test('done awaits attachment copies and complete result JSON', () async {
    final original = Directory.current;
    final directory = await Directory.systemTemp.createTemp('allure-test');
    Directory.current = directory;

    try {
      final attachment = File('attachment.txt');
      await attachment.writeAsString('attachment contents');
      final reporter = GatedReporter();
      reporter.suites[1] = const TestSuite(
        id: 1,
        platform: 'vm',
        path: '/package/test/example_test.dart',
      );
      await reporter.onEvent(TestStartEvent(
        test: Test.fromJson({
          'id': 1,
          'name': 'example',
          'suiteID': 1,
          'groupIDs': <int>[],
          'metadata': {'skip': false},
        }),
        time: 0,
      ));
      reporter.tests[1] = reporter.tests[1]!.copyWith(
        attachments: [attachment.absolute.path],
      );
      var done = false;
      final writing = reporter
          .onEvent(const TestDoneEvent(
            testID: 1,
            result: TestResult.success,
            hidden: false,
            skipped: false,
            time: 1,
          ))
          .then((_) => done = true);
      await reporter.entered.future;
      expect(done, isFalse);
      reporter.release.complete();
      await writing;
      final results = await Directory('allure-results').list().toList();
      final result = results.whereType<File>().singleWhere(
            (file) => file.path.endsWith('-result.json'),
          );
      final json = jsonDecode(await result.readAsString()) as Map;
      final source = (json['attachments'] as List).single['source'];
      expect(await File('allure-results/$source').readAsString(),
          'attachment contents');
      expect(json['status'], 'passed');
      await reporter.onEvent(const TestExitEvent(exitCode: 7, time: 2));
      await reporter.completed;
    } finally {
      Directory.current = original;
      await directory.delete(recursive: true);
    }
  });
}
