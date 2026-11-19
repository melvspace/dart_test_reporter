import 'dart:io';
import 'dart:math';

import 'package:test_reporter/test_reporter.dart';
import 'package:xml/xml.dart';

class JUnitReporter implements TestReporter {
  JUnitReporter({this.output = 'junit.xml'});

  final String output;
  final _suites = <int, TestSuite>{};
  final _cases = <int, _Case>{};

  @override
  Future<void> onEvent(TestEvent event) async {
    switch (event) {
      case TestSuiteEvent(:final suite):
        _suites[suite.id] = suite;
      case TestStartEvent(:final test, :final time):
        _cases[test.id] = _Case(test, time);
      case TestDoneEvent(:final testID):
        _cases[testID]?.done = event;
      case TestErrorEvent(:final testID):
        _cases[testID]?.errors.add(event);
      case TestMessageEvent(:final testID):
        _cases[testID]?.messages.add(event);
      case TestExitEvent(:final time):
        final file = File(output);
        await file.parent.create(recursive: true);
        await file.writeAsString(_document(time), flush: true);
      default:
        break;
    }
  }

  String _document(int endTime) {
    final suites = <int, List<_Case>>{};

    for (final testCase in _cases.values) {
      if (testCase.done?.hidden == true &&
          testCase.result == TestResult.success) {
        continue;
      }

      (suites[testCase.test.suiteID] ??= []).add(testCase);
    }

    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0" encoding="UTF-8"');
    builder.element(
      'testsuites',
      attributes: {
        ..._counts(suites.values.expand((cases) => cases)),
        'time': _seconds(endTime),
      },
      nest: () {
        for (final entry in suites.entries) {
          final suite = _suites[entry.key];
          final path = suite?.path ?? 'Suite ${entry.key}';
          final name = suite == null ? path : '$path (${suite.platform})';
          final cases = entry.value;
          final duration = cases.fold(
            0,
            (total, testCase) => total + testCase.duration(endTime),
          );

          builder.element(
            'testsuite',
            attributes: {
              'name': _xmlText(name),
              ..._counts(cases),
              'time': _seconds(duration),
            },
            nest: () {
              for (final testCase in cases) {
                testCase.write(builder, name, endTime);
              }
            },
          );
        }
      },
    );

    return '${builder.buildDocument().toXmlString()}\n';
  }
}

class _Case {
  _Case(this.test, this.startTime);

  final Test test;
  final int startTime;
  final errors = <TestErrorEvent>[];
  final messages = <TestMessageEvent>[];
  TestDoneEvent? done;

  TestResult get result {
    if (done == null ||
        done?.result == TestResult.error ||
        errors.any((event) => !event.isFailure)) {
      return TestResult.error;
    }

    if (errors.isNotEmpty) return TestResult.failure;

    return done!.result;
  }

  bool get skipped => result == TestResult.success && done?.skipped == true;

  int duration(int endTime) => max(0, (done?.time ?? endTime) - startTime);

  void write(XmlBuilder builder, String suiteName, int endTime) {
    builder.element(
      'testcase',
      attributes: {
        'name': _xmlText(test.name),
        'classname': _xmlText(suiteName),
        'time': _seconds(duration(endTime)),
      },
      nest: () {
        if (result != TestResult.success) {
          final message = errors.firstOrNull?.error ??
              (done == null ? 'Test did not complete' : 'Test ${result.name}');
          final details = errors
              .map((event) => '${event.error}\n${event.stackTrace}')
              .join('\n');

          builder.element(
            result.name,
            attributes: {'message': _xmlText(message.split('\n').first)},
            nest: _xmlText(details.isEmpty ? message : details),
          );
        } else if (skipped) {
          final reason = test.metadata.skipReason ??
              messages
                  .where((event) => event.messageType == 'skip')
                  .firstOrNull
                  ?.message;

          builder.element(
            'skipped',
            attributes: {if (reason != null) 'message': _xmlText(reason)},
          );
        }

        final output = messages
            .where((event) => event.messageType == 'print')
            .map((event) => event.message)
            .join('\n');

        if (output.isNotEmpty) {
          builder.element('system-out', nest: _xmlText(output));
        }
      },
    );
  }
}

Map<String, String> _counts(Iterable<_Case> cases) {
  var tests = 0;
  var failures = 0;
  var errors = 0;
  var skipped = 0;

  for (final testCase in cases) {
    tests++;

    switch (testCase.result) {
      case TestResult.failure:
        failures++;
      case TestResult.error:
        errors++;
      case TestResult.success:
        if (testCase.skipped) skipped++;
    }
  }

  return {
    'tests': tests.toString(),
    'failures': failures.toString(),
    'errors': errors.toString(),
    'skipped': skipped.toString(),
  };
}

String _seconds(int milliseconds) => (milliseconds / 1000).toStringAsFixed(3);

final _invalidXmlCharacters = RegExp(
  r'[^\u0009\u000A\u000D\u0020-\uD7FF\uE000-\uFFFD\u{10000}-\u{10FFFF}]',
  unicode: true,
);

String _xmlText(String value) =>
    value.replaceAll(_invalidXmlCharacters, '\uFFFD');
