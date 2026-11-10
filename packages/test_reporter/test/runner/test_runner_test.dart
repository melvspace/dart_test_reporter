import 'dart:async';
import 'dart:convert';

import 'package:test/test.dart';
import 'package:test_reporter/src/model/models.dart';
import 'package:test_reporter/src/runner/test_runner.dart';
import 'package:universal_io/io.dart';

void main() {
  test('drains both output streams before reporting process exit', () async {
    final process = FakeProcess();
    final events = <TestEvent>[];
    final errors = <Object>[];
    final done = Completer<void>();
    dartTest(startProcess: starter(() async => process))
        .listen(events.add, onError: errors.add, onDone: done.complete);
    await pump();
    process.exit.complete(7);
    await pump();

    expect(events, isEmpty);
    process.output
        .add(utf8.encode('{"type":"done","success":true,"time":1}\n'));
    await process.output.close();
    await pump();

    expect(events, hasLength(1));
    expect(events.single, isNot(isA<TestExitEvent>()));
    process.error.add(utf8.encode('final diagnostic'));
    await process.error.close();
    await done.future;

    expect(events, hasLength(2));
    expect((events.last as TestExitEvent).exitCode, 7);
    expect(errors, ['final diagnostic']);
    expect(process.kills, 0);
  });

  test(
    'cancellation during startup kills the process when it arrives',
    () async {
      final startup = Completer<Process>();
      final process = FakeProcess();
      final subscription =
          dartTest(startProcess: starter(() => startup.future)).listen((_) {});
      await subscription.cancel();
      startup.complete(process);
      await pump();

      expect(process.kills, 1);
      await process.dispose();
    },
  );

  test('cancellation while draining stops subscriptions', () async {
    final process = FakeProcess();
    final subscription =
        dartTest(startProcess: starter(() async => process)).listen((_) {});
    await pump();
    process.exit.complete(0);
    await pump();
    await subscription.cancel();

    expect(process.kills, 1);
    expect(process.output.hasListener, isFalse);
    expect(process.error.hasListener, isFalse);
    await process.dispose();
  });

  test('reports synchronous and asynchronous startup failures', () async {
    final failure = StateError('start failed');

    for (final start in <Future<Process> Function()>[
      () => throw failure,
      () => Future<Process>.error(failure),
    ]) {
      await expectLater(
        dartTest(startProcess: starter(start)),
        emitsInOrder([emitsError(same(failure)), emitsDone]),
      );
    }
  });

  test('ignores startup failure after cancellation', () async {
    final startup = Completer<Process>();
    final subscription =
        dartTest(startProcess: starter(() => startup.future)).listen((_) {});
    await subscription.cancel();
    startup.completeError(StateError('start failed'));
    await pump();
  });
}

Future<void> pump() => Future<void>.delayed(Duration.zero);

StartProcess starter(Future<Process> Function() start) {
  return (
    executable,
    arguments, {
    workingDirectory,
    environment,
    includeParentEnvironment = true,
    runInShell = false,
    mode = ProcessStartMode.normal,
  }) =>
      start();
}

class FakeProcess implements Process {
  final output = StreamController<List<int>>();
  final error = StreamController<List<int>>();
  final exit = Completer<int>();
  var kills = 0;

  @override
  Stream<List<int>> get stdout => output.stream;

  @override
  Stream<List<int>> get stderr => error.stream;

  @override
  Future<int> get exitCode => exit.future;

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    kills++;

    return true;
  }

  Future<void> dispose() async {
    if (!exit.isCompleted) exit.complete(0);

    unawaited(output.close());
    unawaited(error.close());
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
