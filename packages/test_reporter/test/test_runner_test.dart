import 'dart:async';
import 'dart:convert';

import 'package:test/test.dart';
import 'package:test_reporter/src/model/models.dart';
import 'package:test_reporter/src/runner/test_runner.dart';
import 'package:universal_io/io.dart';

void main() {
  test('decodes JSON split at every byte boundary', () async {
    final bytes = utf8.encode('${_messageJson('hello')}\n');

    for (var split = 1; split < bytes.length; split++) {
      final events = await _readEvents([
        bytes.sublist(0, split),
        bytes.sublist(split),
      ]);

      expect(
        events,
        [_message('hello')],
        reason: 'split at byte $split',
      );
    }
  });

  test('decodes multibyte characters split across chunks', () async {
    final bytes = utf8.encode('${_messageJson('café 😀 日本語')}\n');
    final events = await _readEvents([
      for (final byte in bytes) [byte],
    ]);

    expect(events, [_message('café 😀 日本語')]);
  });

  test('preserves multiple events and flushes an unterminated line', () async {
    final events = await _readEvents([
      utf8.encode('${_messageJson('first')}\n${_messageJson('second')}\n'),
      utf8.encode('  \nnot JSON\n${_messageJson('last')}'),
    ]);

    expect(events, [
      _message('first'),
      _message('second'),
      _message('last'),
    ]);
  });
}

TestMessageEvent _message(String message) => TestMessageEvent(
      testID: 1,
      messageType: 'print',
      message: message,
      time: 0,
    );

String _messageJson(String message) => jsonEncode({
      'type': 'print',
      'testID': 1,
      'messageType': 'print',
      'message': message,
      'time': 0,
    });

Future<List<TestEvent>> _readEvents(List<List<int>> chunks) async {
  final process = _ChunkedProcess(chunks);
  final events = <TestEvent>[];
  final result = Completer<List<TestEvent>>();

  dartTest(
    startProcess: (
      executable,
      arguments, {
      workingDirectory,
      environment,
      includeParentEnvironment = true,
      runInShell = false,
      mode = ProcessStartMode.normal,
    }) async =>
        process,
  ).listen(
    (event) {
      if (result.isCompleted) return;

      if (event is TestExitEvent) {
        result.complete(events);
      } else {
        events.add(event);
      }
    },
    onError: (Object error, StackTrace stackTrace) {
      if (result.isCompleted) return;

      result.completeError(error, stackTrace);
    },
  );

  return result.future;
}

class _ChunkedProcess implements Process {
  _ChunkedProcess(this.chunks);

  final List<List<int>> chunks;
  final _exitCode = Completer<int>();

  @override
  Stream<List<int>> get stdout async* {
    yield* Stream.fromIterable(chunks);

    // Let stdout close and flush the decoder before reporting process exit.
    Timer.run(() => _exitCode.complete(0));
  }

  @override
  Stream<List<int>> get stderr => const Stream.empty();

  @override
  Future<int> get exitCode => _exitCode.future;

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) => true;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
