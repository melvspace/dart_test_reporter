// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TestEvent _$TestEventFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'start':
      return TestStartRunnerEvent.fromJson(json);
    case 'allSuites':
      return TestAllSuitesEvent.fromJson(json);
    case 'suite':
      return TestSuiteEvent.fromJson(json);
    case 'debug':
      return TestDebugEvent.fromJson(json);
    case 'group':
      return TestGroupEvent.fromJson(json);
    case 'testStart':
      return TestStartEvent.fromJson(json);
    case 'print':
      return TestMessageEvent.fromJson(json);
    case 'error':
      return TestErrorEvent.fromJson(json);
    case 'testDone':
      return TestDoneEvent.fromJson(json);
    case 'done':
      return TestRunnerDoneEvent.fromJson(json);
    case 'exit':
      return TestExitEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'TestEvent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TestEvent {
  /// {@template test_event.time}
  /// The time (in milliseconds) that has elapsed since the test runner started.
  /// {@endtemplate}
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestEventCopyWith<TestEvent> get copyWith =>
      _$TestEventCopyWithImpl<TestEvent>(this as TestEvent, _$identity);

  /// Serializes this TestEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestEvent &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time);

  @override
  String toString() {
    return 'TestEvent(time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) _then) =
      _$TestEventCopyWithImpl;
  @useResult
  $Res call({int time});
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res> implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._self, this._then);

  final TestEvent _self;
  final $Res Function(TestEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestEvent].
extension TestEventPatterns on TestEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent() when start != null:
        return start(_that);
      case TestAllSuitesEvent() when allSuites != null:
        return allSuites(_that);
      case TestSuiteEvent() when suite != null:
        return suite(_that);
      case TestDebugEvent() when debug != null:
        return debug(_that);
      case TestGroupEvent() when group != null:
        return group(_that);
      case TestStartEvent() when startTest != null:
        return startTest(_that);
      case TestMessageEvent() when message != null:
        return message(_that);
      case TestErrorEvent() when error != null:
        return error(_that);
      case TestDoneEvent() when testDone != null:
        return testDone(_that);
      case TestRunnerDoneEvent() when done != null:
        return done(_that);
      case TestExitEvent() when exit != null:
        return exit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent():
        return start(_that);
      case TestAllSuitesEvent():
        return allSuites(_that);
      case TestSuiteEvent():
        return suite(_that);
      case TestDebugEvent():
        return debug(_that);
      case TestGroupEvent():
        return group(_that);
      case TestStartEvent():
        return startTest(_that);
      case TestMessageEvent():
        return message(_that);
      case TestErrorEvent():
        return error(_that);
      case TestDoneEvent():
        return testDone(_that);
      case TestRunnerDoneEvent():
        return done(_that);
      case TestExitEvent():
        return exit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent() when start != null:
        return start(_that);
      case TestAllSuitesEvent() when allSuites != null:
        return allSuites(_that);
      case TestSuiteEvent() when suite != null:
        return suite(_that);
      case TestDebugEvent() when debug != null:
        return debug(_that);
      case TestGroupEvent() when group != null:
        return group(_that);
      case TestStartEvent() when startTest != null:
        return startTest(_that);
      case TestMessageEvent() when message != null:
        return message(_that);
      case TestErrorEvent() when error != null:
        return error(_that);
      case TestDoneEvent() when testDone != null:
        return testDone(_that);
      case TestRunnerDoneEvent() when done != null:
        return done(_that);
      case TestExitEvent() when exit != null:
        return exit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent() when start != null:
        return start(
            _that.protocolVersion, _that.runnerVersion, _that.pid, _that.time);
      case TestAllSuitesEvent() when allSuites != null:
        return allSuites(_that.count, _that.time);
      case TestSuiteEvent() when suite != null:
        return suite(_that.suite, _that.time);
      case TestDebugEvent() when debug != null:
        return debug(
            _that.suiteID, _that.observatory, _that.remoteDebugger, _that.time);
      case TestGroupEvent() when group != null:
        return group(_that.group, _that.time);
      case TestStartEvent() when startTest != null:
        return startTest(_that.test, _that.time);
      case TestMessageEvent() when message != null:
        return message(
            _that.testID, _that.messageType, _that.message, _that.time);
      case TestErrorEvent() when error != null:
        return error(_that.testID, _that.error, _that.stackTrace,
            _that.isFailure, _that.time);
      case TestDoneEvent() when testDone != null:
        return testDone(_that.testID, _that.result, _that.hidden, _that.skipped,
            _that.time);
      case TestRunnerDoneEvent() when done != null:
        return done(_that.success, _that.time);
      case TestExitEvent() when exit != null:
        return exit(_that.exitCode, _that.time);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent():
        return start(
            _that.protocolVersion, _that.runnerVersion, _that.pid, _that.time);
      case TestAllSuitesEvent():
        return allSuites(_that.count, _that.time);
      case TestSuiteEvent():
        return suite(_that.suite, _that.time);
      case TestDebugEvent():
        return debug(
            _that.suiteID, _that.observatory, _that.remoteDebugger, _that.time);
      case TestGroupEvent():
        return group(_that.group, _that.time);
      case TestStartEvent():
        return startTest(_that.test, _that.time);
      case TestMessageEvent():
        return message(
            _that.testID, _that.messageType, _that.message, _that.time);
      case TestErrorEvent():
        return error(_that.testID, _that.error, _that.stackTrace,
            _that.isFailure, _that.time);
      case TestDoneEvent():
        return testDone(_that.testID, _that.result, _that.hidden, _that.skipped,
            _that.time);
      case TestRunnerDoneEvent():
        return done(_that.success, _that.time);
      case TestExitEvent():
        return exit(_that.exitCode, _that.time);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    final _that = this;
    switch (_that) {
      case TestStartRunnerEvent() when start != null:
        return start(
            _that.protocolVersion, _that.runnerVersion, _that.pid, _that.time);
      case TestAllSuitesEvent() when allSuites != null:
        return allSuites(_that.count, _that.time);
      case TestSuiteEvent() when suite != null:
        return suite(_that.suite, _that.time);
      case TestDebugEvent() when debug != null:
        return debug(
            _that.suiteID, _that.observatory, _that.remoteDebugger, _that.time);
      case TestGroupEvent() when group != null:
        return group(_that.group, _that.time);
      case TestStartEvent() when startTest != null:
        return startTest(_that.test, _that.time);
      case TestMessageEvent() when message != null:
        return message(
            _that.testID, _that.messageType, _that.message, _that.time);
      case TestErrorEvent() when error != null:
        return error(_that.testID, _that.error, _that.stackTrace,
            _that.isFailure, _that.time);
      case TestDoneEvent() when testDone != null:
        return testDone(_that.testID, _that.result, _that.hidden, _that.skipped,
            _that.time);
      case TestRunnerDoneEvent() when done != null:
        return done(_that.success, _that.time);
      case TestExitEvent() when exit != null:
        return exit(_that.exitCode, _that.time);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class TestStartRunnerEvent implements TestEvent {
  const TestStartRunnerEvent(
      {required this.protocolVersion,
      required this.runnerVersion,
      required this.pid,
      required this.time,
      final String? $type})
      : $type = $type ?? 'start';
  factory TestStartRunnerEvent.fromJson(Map<String, dynamic> json) =>
      _$TestStartRunnerEventFromJson(json);

  /// The version of the JSON reporter protocol being used.
  ///
  /// This is a semantic version, but it reflects only the version of the
  /// protocol—it's not identical to the version of the test runner itself.
  final String protocolVersion;

  /// The version of the test runner being used.
  ///
  /// This is null if for some reason the version couldn't be loaded.
  final String? runnerVersion;

  /// The pid of the VM process running the tests.
  final int pid;

  /// {@template test_event.time}
  /// The time (in milliseconds) that has elapsed since the test runner started.
  /// {@endtemplate}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestStartRunnerEventCopyWith<TestStartRunnerEvent> get copyWith =>
      _$TestStartRunnerEventCopyWithImpl<TestStartRunnerEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestStartRunnerEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestStartRunnerEvent &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion) &&
            (identical(other.runnerVersion, runnerVersion) ||
                other.runnerVersion == runnerVersion) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, protocolVersion, runnerVersion, pid, time);

  @override
  String toString() {
    return 'TestEvent.start(protocolVersion: $protocolVersion, runnerVersion: $runnerVersion, pid: $pid, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestStartRunnerEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestStartRunnerEventCopyWith(TestStartRunnerEvent value,
          $Res Function(TestStartRunnerEvent) _then) =
      _$TestStartRunnerEventCopyWithImpl;
  @override
  @useResult
  $Res call({String protocolVersion, String? runnerVersion, int pid, int time});
}

/// @nodoc
class _$TestStartRunnerEventCopyWithImpl<$Res>
    implements $TestStartRunnerEventCopyWith<$Res> {
  _$TestStartRunnerEventCopyWithImpl(this._self, this._then);

  final TestStartRunnerEvent _self;
  final $Res Function(TestStartRunnerEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? protocolVersion = null,
    Object? runnerVersion = freezed,
    Object? pid = null,
    Object? time = null,
  }) {
    return _then(TestStartRunnerEvent(
      protocolVersion: null == protocolVersion
          ? _self.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runnerVersion: freezed == runnerVersion
          ? _self.runnerVersion
          : runnerVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      pid: null == pid
          ? _self.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestAllSuitesEvent implements TestEvent {
  const TestAllSuitesEvent(
      {required this.count, required this.time, final String? $type})
      : $type = $type ?? 'allSuites';
  factory TestAllSuitesEvent.fromJson(Map<String, dynamic> json) =>
      _$TestAllSuitesEventFromJson(json);

  /// The total number of suites that will be loaded.
  final int count;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestAllSuitesEventCopyWith<TestAllSuitesEvent> get copyWith =>
      _$TestAllSuitesEventCopyWithImpl<TestAllSuitesEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestAllSuitesEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestAllSuitesEvent &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, time);

  @override
  String toString() {
    return 'TestEvent.allSuites(count: $count, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestAllSuitesEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestAllSuitesEventCopyWith(
          TestAllSuitesEvent value, $Res Function(TestAllSuitesEvent) _then) =
      _$TestAllSuitesEventCopyWithImpl;
  @override
  @useResult
  $Res call({int count, int time});
}

/// @nodoc
class _$TestAllSuitesEventCopyWithImpl<$Res>
    implements $TestAllSuitesEventCopyWith<$Res> {
  _$TestAllSuitesEventCopyWithImpl(this._self, this._then);

  final TestAllSuitesEvent _self;
  final $Res Function(TestAllSuitesEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? time = null,
  }) {
    return _then(TestAllSuitesEvent(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestSuiteEvent implements TestEvent {
  const TestSuiteEvent(
      {required this.suite, required this.time, final String? $type})
      : $type = $type ?? 'suite';
  factory TestSuiteEvent.fromJson(Map<String, dynamic> json) =>
      _$TestSuiteEventFromJson(json);

  /// Metadata about the suite.
  final TestSuite suite;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestSuiteEventCopyWith<TestSuiteEvent> get copyWith =>
      _$TestSuiteEventCopyWithImpl<TestSuiteEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestSuiteEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestSuiteEvent &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, suite, time);

  @override
  String toString() {
    return 'TestEvent.suite(suite: $suite, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestSuiteEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestSuiteEventCopyWith(
          TestSuiteEvent value, $Res Function(TestSuiteEvent) _then) =
      _$TestSuiteEventCopyWithImpl;
  @override
  @useResult
  $Res call({TestSuite suite, int time});

  $TestSuiteCopyWith<$Res> get suite;
}

/// @nodoc
class _$TestSuiteEventCopyWithImpl<$Res>
    implements $TestSuiteEventCopyWith<$Res> {
  _$TestSuiteEventCopyWithImpl(this._self, this._then);

  final TestSuiteEvent _self;
  final $Res Function(TestSuiteEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suite = null,
    Object? time = null,
  }) {
    return _then(TestSuiteEvent(
      suite: null == suite
          ? _self.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as TestSuite,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestSuiteCopyWith<$Res> get suite {
    return $TestSuiteCopyWith<$Res>(_self.suite, (value) {
      return _then(_self.copyWith(suite: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TestDebugEvent implements TestEvent {
  const TestDebugEvent(
      {required this.suiteID,
      required this.observatory,
      required this.remoteDebugger,
      required this.time,
      final String? $type})
      : $type = $type ?? 'debug';
  factory TestDebugEvent.fromJson(Map<String, dynamic> json) =>
      _$TestDebugEventFromJson(json);

  /// The suite for which debug information is reported.
  final int suiteID;

  /// The HTTP URL for the Dart Observatory, or `null` if the Observatory isn't
  /// available for this suite.
  final String? observatory;

  /// The HTTP URL for the remote debugger for this suite's host page, or `null`
  /// if no remote debugger is available for this suite.
  final String? remoteDebugger;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestDebugEventCopyWith<TestDebugEvent> get copyWith =>
      _$TestDebugEventCopyWithImpl<TestDebugEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestDebugEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestDebugEvent &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            (identical(other.observatory, observatory) ||
                other.observatory == observatory) &&
            (identical(other.remoteDebugger, remoteDebugger) ||
                other.remoteDebugger == remoteDebugger) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, suiteID, observatory, remoteDebugger, time);

  @override
  String toString() {
    return 'TestEvent.debug(suiteID: $suiteID, observatory: $observatory, remoteDebugger: $remoteDebugger, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestDebugEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestDebugEventCopyWith(
          TestDebugEvent value, $Res Function(TestDebugEvent) _then) =
      _$TestDebugEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int suiteID, String? observatory, String? remoteDebugger, int time});
}

/// @nodoc
class _$TestDebugEventCopyWithImpl<$Res>
    implements $TestDebugEventCopyWith<$Res> {
  _$TestDebugEventCopyWithImpl(this._self, this._then);

  final TestDebugEvent _self;
  final $Res Function(TestDebugEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suiteID = null,
    Object? observatory = freezed,
    Object? remoteDebugger = freezed,
    Object? time = null,
  }) {
    return _then(TestDebugEvent(
      suiteID: null == suiteID
          ? _self.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      observatory: freezed == observatory
          ? _self.observatory
          : observatory // ignore: cast_nullable_to_non_nullable
              as String?,
      remoteDebugger: freezed == remoteDebugger
          ? _self.remoteDebugger
          : remoteDebugger // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestGroupEvent implements TestEvent {
  const TestGroupEvent(
      {required this.group, required this.time, final String? $type})
      : $type = $type ?? 'group';
  factory TestGroupEvent.fromJson(Map<String, dynamic> json) =>
      _$TestGroupEventFromJson(json);

  /// Metadata about the group.
  final TestGroup group;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestGroupEventCopyWith<TestGroupEvent> get copyWith =>
      _$TestGroupEventCopyWithImpl<TestGroupEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestGroupEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestGroupEvent &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, time);

  @override
  String toString() {
    return 'TestEvent.group(group: $group, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestGroupEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestGroupEventCopyWith(
          TestGroupEvent value, $Res Function(TestGroupEvent) _then) =
      _$TestGroupEventCopyWithImpl;
  @override
  @useResult
  $Res call({TestGroup group, int time});

  $TestGroupCopyWith<$Res> get group;
}

/// @nodoc
class _$TestGroupEventCopyWithImpl<$Res>
    implements $TestGroupEventCopyWith<$Res> {
  _$TestGroupEventCopyWithImpl(this._self, this._then);

  final TestGroupEvent _self;
  final $Res Function(TestGroupEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? group = null,
    Object? time = null,
  }) {
    return _then(TestGroupEvent(
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as TestGroup,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestGroupCopyWith<$Res> get group {
    return $TestGroupCopyWith<$Res>(_self.group, (value) {
      return _then(_self.copyWith(group: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TestStartEvent implements TestEvent {
  const TestStartEvent(
      {required this.test, required this.time, final String? $type})
      : $type = $type ?? 'testStart';
  factory TestStartEvent.fromJson(Map<String, dynamic> json) =>
      _$TestStartEventFromJson(json);

  /// Metadata about the test that started.
  final Test test;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestStartEventCopyWith<TestStartEvent> get copyWith =>
      _$TestStartEventCopyWithImpl<TestStartEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestStartEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestStartEvent &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, test, time);

  @override
  String toString() {
    return 'TestEvent.startTest(test: $test, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestStartEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestStartEventCopyWith(
          TestStartEvent value, $Res Function(TestStartEvent) _then) =
      _$TestStartEventCopyWithImpl;
  @override
  @useResult
  $Res call({Test test, int time});

  $TestCopyWith<$Res> get test;
}

/// @nodoc
class _$TestStartEventCopyWithImpl<$Res>
    implements $TestStartEventCopyWith<$Res> {
  _$TestStartEventCopyWithImpl(this._self, this._then);

  final TestStartEvent _self;
  final $Res Function(TestStartEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? test = null,
    Object? time = null,
  }) {
    return _then(TestStartEvent(
      test: null == test
          ? _self.test
          : test // ignore: cast_nullable_to_non_nullable
              as Test,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestCopyWith<$Res> get test {
    return $TestCopyWith<$Res>(_self.test, (value) {
      return _then(_self.copyWith(test: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TestMessageEvent implements TestEvent {
  const TestMessageEvent(
      {required this.testID,
      required this.messageType,
      required this.message,
      required this.time,
      final String? $type})
      : $type = $type ?? 'print';
  factory TestMessageEvent.fromJson(Map<String, dynamic> json) =>
      _$TestMessageEventFromJson(json);

  /// The ID of the test that printed a message.
  final int testID;

  /// The type of message being printed.
  final String messageType;

  /// The message that was printed.
  final String message;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestMessageEventCopyWith<TestMessageEvent> get copyWith =>
      _$TestMessageEventCopyWithImpl<TestMessageEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestMessageEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestMessageEvent &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, messageType, message, time);

  @override
  String toString() {
    return 'TestEvent.message(testID: $testID, messageType: $messageType, message: $message, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestMessageEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestMessageEventCopyWith(
          TestMessageEvent value, $Res Function(TestMessageEvent) _then) =
      _$TestMessageEventCopyWithImpl;
  @override
  @useResult
  $Res call({int testID, String messageType, String message, int time});
}

/// @nodoc
class _$TestMessageEventCopyWithImpl<$Res>
    implements $TestMessageEventCopyWith<$Res> {
  _$TestMessageEventCopyWithImpl(this._self, this._then);

  final TestMessageEvent _self;
  final $Res Function(TestMessageEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? testID = null,
    Object? messageType = null,
    Object? message = null,
    Object? time = null,
  }) {
    return _then(TestMessageEvent(
      testID: null == testID
          ? _self.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestErrorEvent implements TestEvent {
  const TestErrorEvent(
      {required this.testID,
      required this.error,
      required this.stackTrace,
      required this.isFailure,
      required this.time,
      final String? $type})
      : $type = $type ?? 'error';
  factory TestErrorEvent.fromJson(Map<String, dynamic> json) =>
      _$TestErrorEventFromJson(json);

  /// The ID of the test that experienced the error.
  final int testID;

  /// The result of calling toString() on the error object.
  final String error;

  /// The error's stack trace, in the stack_trace package format.
  final String stackTrace;

  /// Whether the error was a TestFailure.
  final bool isFailure;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestErrorEventCopyWith<TestErrorEvent> get copyWith =>
      _$TestErrorEventCopyWithImpl<TestErrorEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestErrorEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestErrorEvent &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, error, stackTrace, isFailure, time);

  @override
  String toString() {
    return 'TestEvent.error(testID: $testID, error: $error, stackTrace: $stackTrace, isFailure: $isFailure, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestErrorEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestErrorEventCopyWith(
          TestErrorEvent value, $Res Function(TestErrorEvent) _then) =
      _$TestErrorEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int testID, String error, String stackTrace, bool isFailure, int time});
}

/// @nodoc
class _$TestErrorEventCopyWithImpl<$Res>
    implements $TestErrorEventCopyWith<$Res> {
  _$TestErrorEventCopyWithImpl(this._self, this._then);

  final TestErrorEvent _self;
  final $Res Function(TestErrorEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? testID = null,
    Object? error = null,
    Object? stackTrace = null,
    Object? isFailure = null,
    Object? time = null,
  }) {
    return _then(TestErrorEvent(
      testID: null == testID
          ? _self.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _self.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      isFailure: null == isFailure
          ? _self.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestDoneEvent implements TestEvent {
  const TestDoneEvent(
      {required this.testID,
      required this.result,
      required this.hidden,
      required this.skipped,
      required this.time,
      final String? $type})
      : $type = $type ?? 'testDone';
  factory TestDoneEvent.fromJson(Map<String, dynamic> json) =>
      _$TestDoneEventFromJson(json);

  /// The ID of the test that completed.
  final int testID;

  /// The result of the test.
  final TestResult result;

  /// Whether the test's result should be hidden.
  final bool hidden;

  /// Whether the test (or some part of it) was skipped.
  final bool skipped;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestDoneEventCopyWith<TestDoneEvent> get copyWith =>
      _$TestDoneEventCopyWithImpl<TestDoneEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestDoneEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestDoneEvent &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, result, hidden, skipped, time);

  @override
  String toString() {
    return 'TestEvent.testDone(testID: $testID, result: $result, hidden: $hidden, skipped: $skipped, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestDoneEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestDoneEventCopyWith(
          TestDoneEvent value, $Res Function(TestDoneEvent) _then) =
      _$TestDoneEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int testID, TestResult result, bool hidden, bool skipped, int time});
}

/// @nodoc
class _$TestDoneEventCopyWithImpl<$Res>
    implements $TestDoneEventCopyWith<$Res> {
  _$TestDoneEventCopyWithImpl(this._self, this._then);

  final TestDoneEvent _self;
  final $Res Function(TestDoneEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? testID = null,
    Object? result = null,
    Object? hidden = null,
    Object? skipped = null,
    Object? time = null,
  }) {
    return _then(TestDoneEvent(
      testID: null == testID
          ? _self.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as TestResult,
      hidden: null == hidden
          ? _self.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _self.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestRunnerDoneEvent implements TestEvent {
  const TestRunnerDoneEvent(
      {required this.success, required this.time, final String? $type})
      : $type = $type ?? 'done';
  factory TestRunnerDoneEvent.fromJson(Map<String, dynamic> json) =>
      _$TestRunnerDoneEventFromJson(json);

  /// Whether all tests succeeded (or were skipped).
  ///
  /// Will be `null` if the test runner was close before all tests completed
  /// running.
  final bool? success;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestRunnerDoneEventCopyWith<TestRunnerDoneEvent> get copyWith =>
      _$TestRunnerDoneEventCopyWithImpl<TestRunnerDoneEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestRunnerDoneEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestRunnerDoneEvent &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, time);

  @override
  String toString() {
    return 'TestEvent.done(success: $success, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestRunnerDoneEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestRunnerDoneEventCopyWith(
          TestRunnerDoneEvent value, $Res Function(TestRunnerDoneEvent) _then) =
      _$TestRunnerDoneEventCopyWithImpl;
  @override
  @useResult
  $Res call({bool? success, int time});
}

/// @nodoc
class _$TestRunnerDoneEventCopyWithImpl<$Res>
    implements $TestRunnerDoneEventCopyWith<$Res> {
  _$TestRunnerDoneEventCopyWithImpl(this._self, this._then);

  final TestRunnerDoneEvent _self;
  final $Res Function(TestRunnerDoneEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? time = null,
  }) {
    return _then(TestRunnerDoneEvent(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TestExitEvent implements TestEvent {
  const TestExitEvent(
      {required this.exitCode, required this.time, final String? $type})
      : $type = $type ?? 'exit';
  factory TestExitEvent.fromJson(Map<String, dynamic> json) =>
      _$TestExitEventFromJson(json);

  /// The exit code associated with the test process.
  final int exitCode;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestExitEventCopyWith<TestExitEvent> get copyWith =>
      _$TestExitEventCopyWithImpl<TestExitEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestExitEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestExitEvent &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exitCode, time);

  @override
  String toString() {
    return 'TestEvent.exit(exitCode: $exitCode, time: $time)';
  }
}

/// @nodoc
abstract mixin class $TestExitEventCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory $TestExitEventCopyWith(
          TestExitEvent value, $Res Function(TestExitEvent) _then) =
      _$TestExitEventCopyWithImpl;
  @override
  @useResult
  $Res call({int exitCode, int time});
}

/// @nodoc
class _$TestExitEventCopyWithImpl<$Res>
    implements $TestExitEventCopyWith<$Res> {
  _$TestExitEventCopyWithImpl(this._self, this._then);

  final TestExitEvent _self;
  final $Res Function(TestExitEvent) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exitCode = null,
    Object? time = null,
  }) {
    return _then(TestExitEvent(
      exitCode: null == exitCode
          ? _self.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$TestSuite {
  /// An opaque ID for the group.
  int get id;

  /// The platform on which the suite is running.
  String get platform;

  /// The path to the suite's file, or `null` if that path is unknown.
  String? get path;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestSuiteCopyWith<TestSuite> get copyWith =>
      _$TestSuiteCopyWithImpl<TestSuite>(this as TestSuite, _$identity);

  /// Serializes this TestSuite to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestSuite &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, platform, path);

  @override
  String toString() {
    return 'TestSuite(id: $id, platform: $platform, path: $path)';
  }
}

/// @nodoc
abstract mixin class $TestSuiteCopyWith<$Res> {
  factory $TestSuiteCopyWith(TestSuite value, $Res Function(TestSuite) _then) =
      _$TestSuiteCopyWithImpl;
  @useResult
  $Res call({int id, String platform, String? path});
}

/// @nodoc
class _$TestSuiteCopyWithImpl<$Res> implements $TestSuiteCopyWith<$Res> {
  _$TestSuiteCopyWithImpl(this._self, this._then);

  final TestSuite _self;
  final $Res Function(TestSuite) _then;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? path = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestSuite].
extension TestSuitePatterns on TestSuite {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestSuite value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestSuite() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestSuite value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestSuite():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestSuite value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestSuite() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String platform, String? path)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestSuite() when $default != null:
        return $default(_that.id, _that.platform, _that.path);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String platform, String? path) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestSuite():
        return $default(_that.id, _that.platform, _that.path);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String platform, String? path)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestSuite() when $default != null:
        return $default(_that.id, _that.platform, _that.path);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestSuite implements TestSuite {
  const _TestSuite(
      {required this.id, required this.platform, required this.path});
  factory _TestSuite.fromJson(Map<String, dynamic> json) =>
      _$TestSuiteFromJson(json);

  /// An opaque ID for the group.
  @override
  final int id;

  /// The platform on which the suite is running.
  @override
  final String platform;

  /// The path to the suite's file, or `null` if that path is unknown.
  @override
  final String? path;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestSuiteCopyWith<_TestSuite> get copyWith =>
      __$TestSuiteCopyWithImpl<_TestSuite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestSuiteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestSuite &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, platform, path);

  @override
  String toString() {
    return 'TestSuite(id: $id, platform: $platform, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$TestSuiteCopyWith<$Res>
    implements $TestSuiteCopyWith<$Res> {
  factory _$TestSuiteCopyWith(
          _TestSuite value, $Res Function(_TestSuite) _then) =
      __$TestSuiteCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String platform, String? path});
}

/// @nodoc
class __$TestSuiteCopyWithImpl<$Res> implements _$TestSuiteCopyWith<$Res> {
  __$TestSuiteCopyWithImpl(this._self, this._then);

  final _TestSuite _self;
  final $Res Function(_TestSuite) _then;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? path = freezed,
  }) {
    return _then(_TestSuite(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TestGroup {
  /// An opaque ID for the group.
  int get id;

  /// The name of the group, including prefixes from any containing groups.
  String get name;

  /// The ID of the suite containing this group.
  int get suiteID;

  /// The ID of the group's parent group, unless it's the root group.
  int? get parentID;

  /// The number of tests (recursively) within this group.
  int get testCount;

  /// The (1-based) line on which the group was defined, or `null`.
  int? get line;

  /// The (1-based) column on which the group was defined, or `null`.
  int? get column;

  /// The URL for the file in which the group was defined, or `null`.
  String? get url;

  /// This field is deprecated and should not be used.
  TestMetadata get metadata;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestGroupCopyWith<TestGroup> get copyWith =>
      _$TestGroupCopyWithImpl<TestGroup>(this as TestGroup, _$identity);

  /// Serializes this TestGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            (identical(other.parentID, parentID) ||
                other.parentID == parentID) &&
            (identical(other.testCount, testCount) ||
                other.testCount == testCount) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, suiteID, parentID,
      testCount, line, column, url, metadata);

  @override
  String toString() {
    return 'TestGroup(id: $id, name: $name, suiteID: $suiteID, parentID: $parentID, testCount: $testCount, line: $line, column: $column, url: $url, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TestGroupCopyWith<$Res> {
  factory $TestGroupCopyWith(TestGroup value, $Res Function(TestGroup) _then) =
      _$TestGroupCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      int? parentID,
      int testCount,
      int? line,
      int? column,
      String? url,
      TestMetadata metadata});

  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TestGroupCopyWithImpl<$Res> implements $TestGroupCopyWith<$Res> {
  _$TestGroupCopyWithImpl(this._self, this._then);

  final TestGroup _self;
  final $Res Function(TestGroup) _then;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? parentID = freezed,
    Object? testCount = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _self.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      parentID: freezed == parentID
          ? _self.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      testCount: null == testCount
          ? _self.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      line: freezed == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TestGroup].
extension TestGroupPatterns on TestGroup {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestGroup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestGroup() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestGroup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestGroup():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestGroup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestGroup() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int suiteID,
            int? parentID,
            int testCount,
            int? line,
            int? column,
            String? url,
            TestMetadata metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestGroup() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.parentID,
            _that.testCount,
            _that.line,
            _that.column,
            _that.url,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int suiteID,
            int? parentID,
            int testCount,
            int? line,
            int? column,
            String? url,
            TestMetadata metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestGroup():
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.parentID,
            _that.testCount,
            _that.line,
            _that.column,
            _that.url,
            _that.metadata);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String name,
            int suiteID,
            int? parentID,
            int testCount,
            int? line,
            int? column,
            String? url,
            TestMetadata metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestGroup() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.parentID,
            _that.testCount,
            _that.line,
            _that.column,
            _that.url,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestGroup implements TestGroup {
  const _TestGroup(
      {required this.id,
      required this.name,
      required this.suiteID,
      required this.parentID,
      required this.testCount,
      required this.line,
      required this.column,
      required this.url,
      required this.metadata});
  factory _TestGroup.fromJson(Map<String, dynamic> json) =>
      _$TestGroupFromJson(json);

  /// An opaque ID for the group.
  @override
  final int id;

  /// The name of the group, including prefixes from any containing groups.
  @override
  final String name;

  /// The ID of the suite containing this group.
  @override
  final int suiteID;

  /// The ID of the group's parent group, unless it's the root group.
  @override
  final int? parentID;

  /// The number of tests (recursively) within this group.
  @override
  final int testCount;

  /// The (1-based) line on which the group was defined, or `null`.
  @override
  final int? line;

  /// The (1-based) column on which the group was defined, or `null`.
  @override
  final int? column;

  /// The URL for the file in which the group was defined, or `null`.
  @override
  final String? url;

  /// This field is deprecated and should not be used.
  @override
  final TestMetadata metadata;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestGroupCopyWith<_TestGroup> get copyWith =>
      __$TestGroupCopyWithImpl<_TestGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            (identical(other.parentID, parentID) ||
                other.parentID == parentID) &&
            (identical(other.testCount, testCount) ||
                other.testCount == testCount) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, suiteID, parentID,
      testCount, line, column, url, metadata);

  @override
  String toString() {
    return 'TestGroup(id: $id, name: $name, suiteID: $suiteID, parentID: $parentID, testCount: $testCount, line: $line, column: $column, url: $url, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TestGroupCopyWith<$Res>
    implements $TestGroupCopyWith<$Res> {
  factory _$TestGroupCopyWith(
          _TestGroup value, $Res Function(_TestGroup) _then) =
      __$TestGroupCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      int? parentID,
      int testCount,
      int? line,
      int? column,
      String? url,
      TestMetadata metadata});

  @override
  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$TestGroupCopyWithImpl<$Res> implements _$TestGroupCopyWith<$Res> {
  __$TestGroupCopyWithImpl(this._self, this._then);

  final _TestGroup _self;
  final $Res Function(_TestGroup) _then;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? parentID = freezed,
    Object? testCount = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? metadata = null,
  }) {
    return _then(_TestGroup(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _self.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      parentID: freezed == parentID
          ? _self.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      testCount: null == testCount
          ? _self.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      line: freezed == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
mixin _$TestMetadata {
  /// Whether the test was skipped.
  bool get skip;

  /// The reason the tests was skipped, or `null` if it wasn't skipped.
  String? get skipReason;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<TestMetadata> get copyWith =>
      _$TestMetadataCopyWithImpl<TestMetadata>(
          this as TestMetadata, _$identity);

  /// Serializes this TestMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestMetadata &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.skipReason, skipReason) ||
                other.skipReason == skipReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skip, skipReason);

  @override
  String toString() {
    return 'TestMetadata(skip: $skip, skipReason: $skipReason)';
  }
}

/// @nodoc
abstract mixin class $TestMetadataCopyWith<$Res> {
  factory $TestMetadataCopyWith(
          TestMetadata value, $Res Function(TestMetadata) _then) =
      _$TestMetadataCopyWithImpl;
  @useResult
  $Res call({bool skip, String? skipReason});
}

/// @nodoc
class _$TestMetadataCopyWithImpl<$Res> implements $TestMetadataCopyWith<$Res> {
  _$TestMetadataCopyWithImpl(this._self, this._then);

  final TestMetadata _self;
  final $Res Function(TestMetadata) _then;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? skipReason = freezed,
  }) {
    return _then(_self.copyWith(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as bool,
      skipReason: freezed == skipReason
          ? _self.skipReason
          : skipReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestMetadata].
extension TestMetadataPatterns on TestMetadata {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestMetadata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestMetadata() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestMetadata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestMetadata():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestMetadata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestMetadata() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool skip, String? skipReason)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestMetadata() when $default != null:
        return $default(_that.skip, _that.skipReason);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool skip, String? skipReason) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestMetadata():
        return $default(_that.skip, _that.skipReason);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool skip, String? skipReason)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestMetadata() when $default != null:
        return $default(_that.skip, _that.skipReason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestMetadata implements TestMetadata {
  const _TestMetadata({required this.skip, required this.skipReason});
  factory _TestMetadata.fromJson(Map<String, dynamic> json) =>
      _$TestMetadataFromJson(json);

  /// Whether the test was skipped.
  @override
  final bool skip;

  /// The reason the tests was skipped, or `null` if it wasn't skipped.
  @override
  final String? skipReason;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestMetadataCopyWith<_TestMetadata> get copyWith =>
      __$TestMetadataCopyWithImpl<_TestMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestMetadata &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.skipReason, skipReason) ||
                other.skipReason == skipReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skip, skipReason);

  @override
  String toString() {
    return 'TestMetadata(skip: $skip, skipReason: $skipReason)';
  }
}

/// @nodoc
abstract mixin class _$TestMetadataCopyWith<$Res>
    implements $TestMetadataCopyWith<$Res> {
  factory _$TestMetadataCopyWith(
          _TestMetadata value, $Res Function(_TestMetadata) _then) =
      __$TestMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({bool skip, String? skipReason});
}

/// @nodoc
class __$TestMetadataCopyWithImpl<$Res>
    implements _$TestMetadataCopyWith<$Res> {
  __$TestMetadataCopyWithImpl(this._self, this._then);

  final _TestMetadata _self;
  final $Res Function(_TestMetadata) _then;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skip = null,
    Object? skipReason = freezed,
  }) {
    return _then(_TestMetadata(
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as bool,
      skipReason: freezed == skipReason
          ? _self.skipReason
          : skipReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Test {
  /// An opaque ID for the test.
  int get id;

  /// The name of the test, including prefixes from any containing groups.
  String get name;

  /// The ID of the suite containing this test.
  int get suiteID;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  List<int> get groupIDs;

  /// The (1-based) line on which the test was defined, or `null`.
  int? get line;

  /// The (1-based) column on which the test was defined, or `null`.
  int? get column;

  /// The URL for the file in which the test was defined, or `null`.
  String? get url;

  /// The (1-based) line in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  int? get rootLine;

  /// The (1-based) line on in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  int? get rootColumn;

  /// The URL for the original test suite in which the test was defined.
  ///
  /// Will only be present if different from `url`.
  String? get rootUrl;

  /// This field is deprecated and should not be used.
  TestMetadata get metadata;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestCopyWith<Test> get copyWith =>
      _$TestCopyWithImpl<Test>(this as Test, _$identity);

  /// Serializes this Test to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Test &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            const DeepCollectionEquality().equals(other.groupIDs, groupIDs) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.rootLine, rootLine) ||
                other.rootLine == rootLine) &&
            (identical(other.rootColumn, rootColumn) ||
                other.rootColumn == rootColumn) &&
            (identical(other.rootUrl, rootUrl) || other.rootUrl == rootUrl) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      suiteID,
      const DeepCollectionEquality().hash(groupIDs),
      line,
      column,
      url,
      rootLine,
      rootColumn,
      rootUrl,
      metadata);

  @override
  String toString() {
    return 'Test(id: $id, name: $name, suiteID: $suiteID, groupIDs: $groupIDs, line: $line, column: $column, url: $url, rootLine: $rootLine, rootColumn: $rootColumn, rootUrl: $rootUrl, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) _then) =
      _$TestCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      List<int> groupIDs,
      int? line,
      int? column,
      String? url,
      int? rootLine,
      int? rootColumn,
      String? rootUrl,
      TestMetadata metadata});

  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._self, this._then);

  final Test _self;
  final $Res Function(Test) _then;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? groupIDs = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? rootLine = freezed,
    Object? rootColumn = freezed,
    Object? rootUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _self.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      groupIDs: null == groupIDs
          ? _self.groupIDs
          : groupIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      line: freezed == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      rootLine: freezed == rootLine
          ? _self.rootLine
          : rootLine // ignore: cast_nullable_to_non_nullable
              as int?,
      rootColumn: freezed == rootColumn
          ? _self.rootColumn
          : rootColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      rootUrl: freezed == rootUrl
          ? _self.rootUrl
          : rootUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Test].
extension TestPatterns on Test {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Test() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Test value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Test():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Test value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Test() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int suiteID,
            List<int> groupIDs,
            int? line,
            int? column,
            String? url,
            int? rootLine,
            int? rootColumn,
            String? rootUrl,
            TestMetadata metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Test() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.groupIDs,
            _that.line,
            _that.column,
            _that.url,
            _that.rootLine,
            _that.rootColumn,
            _that.rootUrl,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int suiteID,
            List<int> groupIDs,
            int? line,
            int? column,
            String? url,
            int? rootLine,
            int? rootColumn,
            String? rootUrl,
            TestMetadata metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Test():
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.groupIDs,
            _that.line,
            _that.column,
            _that.url,
            _that.rootLine,
            _that.rootColumn,
            _that.rootUrl,
            _that.metadata);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String name,
            int suiteID,
            List<int> groupIDs,
            int? line,
            int? column,
            String? url,
            int? rootLine,
            int? rootColumn,
            String? rootUrl,
            TestMetadata metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Test() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.suiteID,
            _that.groupIDs,
            _that.line,
            _that.column,
            _that.url,
            _that.rootLine,
            _that.rootColumn,
            _that.rootUrl,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Test implements Test {
  const _Test(
      {required this.id,
      required this.name,
      required this.suiteID,
      required final List<int> groupIDs,
      required this.line,
      required this.column,
      required this.url,
      required this.rootLine,
      required this.rootColumn,
      required this.rootUrl,
      required this.metadata})
      : _groupIDs = groupIDs;
  factory _Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

  /// An opaque ID for the test.
  @override
  final int id;

  /// The name of the test, including prefixes from any containing groups.
  @override
  final String name;

  /// The ID of the suite containing this test.
  @override
  final int suiteID;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  final List<int> _groupIDs;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  @override
  List<int> get groupIDs {
    if (_groupIDs is EqualUnmodifiableListView) return _groupIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIDs);
  }

  /// The (1-based) line on which the test was defined, or `null`.
  @override
  final int? line;

  /// The (1-based) column on which the test was defined, or `null`.
  @override
  final int? column;

  /// The URL for the file in which the test was defined, or `null`.
  @override
  final String? url;

  /// The (1-based) line in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  final int? rootLine;

  /// The (1-based) line on in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  final int? rootColumn;

  /// The URL for the original test suite in which the test was defined.
  ///
  /// Will only be present if different from `url`.
  @override
  final String? rootUrl;

  /// This field is deprecated and should not be used.
  @override
  final TestMetadata metadata;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Test &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            const DeepCollectionEquality().equals(other._groupIDs, _groupIDs) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.rootLine, rootLine) ||
                other.rootLine == rootLine) &&
            (identical(other.rootColumn, rootColumn) ||
                other.rootColumn == rootColumn) &&
            (identical(other.rootUrl, rootUrl) || other.rootUrl == rootUrl) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      suiteID,
      const DeepCollectionEquality().hash(_groupIDs),
      line,
      column,
      url,
      rootLine,
      rootColumn,
      rootUrl,
      metadata);

  @override
  String toString() {
    return 'Test(id: $id, name: $name, suiteID: $suiteID, groupIDs: $groupIDs, line: $line, column: $column, url: $url, rootLine: $rootLine, rootColumn: $rootColumn, rootUrl: $rootUrl, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) _then) =
      __$TestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      List<int> groupIDs,
      int? line,
      int? column,
      String? url,
      int? rootLine,
      int? rootColumn,
      String? rootUrl,
      TestMetadata metadata});

  @override
  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$TestCopyWithImpl<$Res> implements _$TestCopyWith<$Res> {
  __$TestCopyWithImpl(this._self, this._then);

  final _Test _self;
  final $Res Function(_Test) _then;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? groupIDs = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? rootLine = freezed,
    Object? rootColumn = freezed,
    Object? rootUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_Test(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _self.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      groupIDs: null == groupIDs
          ? _self._groupIDs
          : groupIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      line: freezed == line
          ? _self.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _self.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      rootLine: freezed == rootLine
          ? _self.rootLine
          : rootLine // ignore: cast_nullable_to_non_nullable
              as int?,
      rootColumn: freezed == rootColumn
          ? _self.rootColumn
          : rootColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      rootUrl: freezed == rootUrl
          ? _self.rootUrl
          : rootUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

// dart format on
