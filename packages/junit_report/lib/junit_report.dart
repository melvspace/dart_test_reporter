import 'dart:io';

import 'package:junit_report/src/junit_reporter.dart';
import 'package:test_reporter/test_reporter.dart';

export 'src/junit_reporter.dart';

TestReporter createReporter(List<String> args) {
  return JUnitReporter(
      output: Platform.environment['JUNIT_OUTPUT'] ?? 'junit.xml');
}
