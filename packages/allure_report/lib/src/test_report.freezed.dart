// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestReport {
  TestStartEvent? get start;
  TestDoneEvent? get end;
  TestErrorEvent? get error;
  List<String> get attachments;

  /// Create a copy of TestReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestReportCopyWith<TestReport> get copyWith =>
      _$TestReportCopyWithImpl<TestReport>(this as TestReport, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestReport &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, error,
      const DeepCollectionEquality().hash(attachments));

  @override
  String toString() {
    return 'TestReport(start: $start, end: $end, error: $error, attachments: $attachments)';
  }
}

/// @nodoc
abstract mixin class $TestReportCopyWith<$Res> {
  factory $TestReportCopyWith(
          TestReport value, $Res Function(TestReport) _then) =
      _$TestReportCopyWithImpl;
  @useResult
  $Res call(
      {TestStartEvent? start,
      TestDoneEvent? end,
      TestErrorEvent? error,
      List<String> attachments});
}

/// @nodoc
class _$TestReportCopyWithImpl<$Res> implements $TestReportCopyWith<$Res> {
  _$TestReportCopyWithImpl(this._self, this._then);

  final TestReport _self;
  final $Res Function(TestReport) _then;

  /// Create a copy of TestReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? error = freezed,
    Object? attachments = null,
  }) {
    return _then(_self.copyWith(
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as TestStartEvent?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as TestDoneEvent?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as TestErrorEvent?,
      attachments: null == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestReport].
extension TestReportPatterns on TestReport {
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
    TResult Function(_TestReport value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestReport() when $default != null:
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
    TResult Function(_TestReport value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestReport():
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
    TResult? Function(_TestReport value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestReport() when $default != null:
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
    TResult Function(TestStartEvent? start, TestDoneEvent? end,
            TestErrorEvent? error, List<String> attachments)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestReport() when $default != null:
        return $default(_that.start, _that.end, _that.error, _that.attachments);
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
    TResult Function(TestStartEvent? start, TestDoneEvent? end,
            TestErrorEvent? error, List<String> attachments)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestReport():
        return $default(_that.start, _that.end, _that.error, _that.attachments);
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
    TResult? Function(TestStartEvent? start, TestDoneEvent? end,
            TestErrorEvent? error, List<String> attachments)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestReport() when $default != null:
        return $default(_that.start, _that.end, _that.error, _that.attachments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TestReport extends TestReport {
  const _TestReport(
      {this.start,
      this.end,
      this.error,
      final List<String> attachments = const []})
      : _attachments = attachments,
        super._();

  @override
  final TestStartEvent? start;
  @override
  final TestDoneEvent? end;
  @override
  final TestErrorEvent? error;
  final List<String> _attachments;
  @override
  @JsonKey()
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  /// Create a copy of TestReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestReportCopyWith<_TestReport> get copyWith =>
      __$TestReportCopyWithImpl<_TestReport>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestReport &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, error,
      const DeepCollectionEquality().hash(_attachments));

  @override
  String toString() {
    return 'TestReport(start: $start, end: $end, error: $error, attachments: $attachments)';
  }
}

/// @nodoc
abstract mixin class _$TestReportCopyWith<$Res>
    implements $TestReportCopyWith<$Res> {
  factory _$TestReportCopyWith(
          _TestReport value, $Res Function(_TestReport) _then) =
      __$TestReportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TestStartEvent? start,
      TestDoneEvent? end,
      TestErrorEvent? error,
      List<String> attachments});
}

/// @nodoc
class __$TestReportCopyWithImpl<$Res> implements _$TestReportCopyWith<$Res> {
  __$TestReportCopyWithImpl(this._self, this._then);

  final _TestReport _self;
  final $Res Function(_TestReport) _then;

  /// Create a copy of TestReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? error = freezed,
    Object? attachments = null,
  }) {
    return _then(_TestReport(
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as TestStartEvent?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as TestDoneEvent?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as TestErrorEvent?,
      attachments: null == attachments
          ? _self._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
