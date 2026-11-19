# JUnit Report

Generate JUnit XML from Dart and Flutter test runs with the
[test_reporter](https://pub.dev/packages/test_reporter) CLI.

Add the reporter as a dev dependency.

```yaml
dev_dependencies:
  test_reporter_junit: ^0.1.0
  test_reporter: ^1.3.1
```

Run the CLI with the JUnit adapter.

```sh
dart run test_reporter --reporter test_reporter_junit -- dart test
dart run test_reporter --reporter test_reporter_junit -- flutter test
```

The adapter writes `junit.xml` in the working directory. Set `JUNIT_OUTPUT`
to choose a different path.

```sh
JUNIT_OUTPUT=reports/junit.xml dart run test_reporter --reporter test_reporter_junit -- dart test
```

If your project has a `test/reporter.dart` factory, return
`JUnitReporter(output: 'reports/junit.xml')` from it. Import
`package:test_reporter_junit/test_reporter_junit.dart` to use the class.
