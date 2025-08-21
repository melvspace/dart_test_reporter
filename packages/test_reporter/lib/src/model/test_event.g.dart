// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestStartRunnerEvent _$TestStartRunnerEventFromJson(
        Map<String, dynamic> json) =>
    TestStartRunnerEvent(
      protocolVersion: json['protocolVersion'] as String,
      runnerVersion: json['runnerVersion'] as String?,
      pid: (json['pid'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestStartRunnerEventToJson(
        TestStartRunnerEvent instance) =>
    <String, dynamic>{
      'protocolVersion': instance.protocolVersion,
      'runnerVersion': instance.runnerVersion,
      'pid': instance.pid,
      'time': instance.time,
      'type': instance.$type,
    };

TestAllSuitesEvent _$TestAllSuitesEventFromJson(Map<String, dynamic> json) =>
    TestAllSuitesEvent(
      count: (json['count'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestAllSuitesEventToJson(TestAllSuitesEvent instance) =>
    <String, dynamic>{
      'count': instance.count,
      'time': instance.time,
      'type': instance.$type,
    };

TestSuiteEvent _$TestSuiteEventFromJson(Map<String, dynamic> json) =>
    TestSuiteEvent(
      suite: TestSuite.fromJson(json['suite'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestSuiteEventToJson(TestSuiteEvent instance) =>
    <String, dynamic>{
      'suite': instance.suite,
      'time': instance.time,
      'type': instance.$type,
    };

TestDebugEvent _$TestDebugEventFromJson(Map<String, dynamic> json) =>
    TestDebugEvent(
      suiteID: (json['suiteID'] as num).toInt(),
      observatory: json['observatory'] as String?,
      remoteDebugger: json['remoteDebugger'] as String?,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestDebugEventToJson(TestDebugEvent instance) =>
    <String, dynamic>{
      'suiteID': instance.suiteID,
      'observatory': instance.observatory,
      'remoteDebugger': instance.remoteDebugger,
      'time': instance.time,
      'type': instance.$type,
    };

TestGroupEvent _$TestGroupEventFromJson(Map<String, dynamic> json) =>
    TestGroupEvent(
      group: TestGroup.fromJson(json['group'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestGroupEventToJson(TestGroupEvent instance) =>
    <String, dynamic>{
      'group': instance.group,
      'time': instance.time,
      'type': instance.$type,
    };

TestStartEvent _$TestStartEventFromJson(Map<String, dynamic> json) =>
    TestStartEvent(
      test: Test.fromJson(json['test'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestStartEventToJson(TestStartEvent instance) =>
    <String, dynamic>{
      'test': instance.test,
      'time': instance.time,
      'type': instance.$type,
    };

TestMessageEvent _$TestMessageEventFromJson(Map<String, dynamic> json) =>
    TestMessageEvent(
      testID: (json['testID'] as num).toInt(),
      messageType: json['messageType'] as String,
      message: json['message'] as String,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestMessageEventToJson(TestMessageEvent instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'messageType': instance.messageType,
      'message': instance.message,
      'time': instance.time,
      'type': instance.$type,
    };

TestErrorEvent _$TestErrorEventFromJson(Map<String, dynamic> json) =>
    TestErrorEvent(
      testID: (json['testID'] as num).toInt(),
      error: json['error'] as String,
      stackTrace: json['stackTrace'] as String,
      isFailure: json['isFailure'] as bool,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestErrorEventToJson(TestErrorEvent instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'error': instance.error,
      'stackTrace': instance.stackTrace,
      'isFailure': instance.isFailure,
      'time': instance.time,
      'type': instance.$type,
    };

TestDoneEvent _$TestDoneEventFromJson(Map<String, dynamic> json) =>
    TestDoneEvent(
      testID: (json['testID'] as num).toInt(),
      result: $enumDecode(_$TestResultEnumMap, json['result']),
      hidden: json['hidden'] as bool,
      skipped: json['skipped'] as bool,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestDoneEventToJson(TestDoneEvent instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'result': _$TestResultEnumMap[instance.result]!,
      'hidden': instance.hidden,
      'skipped': instance.skipped,
      'time': instance.time,
      'type': instance.$type,
    };

const _$TestResultEnumMap = {
  TestResult.success: 'success',
  TestResult.failure: 'failure',
  TestResult.error: 'error',
};

TestRunnerDoneEvent _$TestRunnerDoneEventFromJson(Map<String, dynamic> json) =>
    TestRunnerDoneEvent(
      success: json['success'] as bool?,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestRunnerDoneEventToJson(
        TestRunnerDoneEvent instance) =>
    <String, dynamic>{
      'success': instance.success,
      'time': instance.time,
      'type': instance.$type,
    };

TestExitEvent _$TestExitEventFromJson(Map<String, dynamic> json) =>
    TestExitEvent(
      exitCode: (json['exitCode'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TestExitEventToJson(TestExitEvent instance) =>
    <String, dynamic>{
      'exitCode': instance.exitCode,
      'time': instance.time,
      'type': instance.$type,
    };

_TestSuite _$TestSuiteFromJson(Map<String, dynamic> json) => _TestSuite(
      id: (json['id'] as num).toInt(),
      platform: json['platform'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$TestSuiteToJson(_TestSuite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'path': instance.path,
    };

_TestGroup _$TestGroupFromJson(Map<String, dynamic> json) => _TestGroup(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      suiteID: (json['suiteID'] as num).toInt(),
      parentID: (json['parentID'] as num?)?.toInt(),
      testCount: (json['testCount'] as num).toInt(),
      line: (json['line'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
      url: json['url'] as String?,
      metadata: TestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestGroupToJson(_TestGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'suiteID': instance.suiteID,
      'parentID': instance.parentID,
      'testCount': instance.testCount,
      'line': instance.line,
      'column': instance.column,
      'url': instance.url,
      'metadata': instance.metadata,
    };

_TestMetadata _$TestMetadataFromJson(Map<String, dynamic> json) =>
    _TestMetadata(
      skip: json['skip'] as bool,
      skipReason: json['skipReason'] as String?,
    );

Map<String, dynamic> _$TestMetadataToJson(_TestMetadata instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'skipReason': instance.skipReason,
    };

_Test _$TestFromJson(Map<String, dynamic> json) => _Test(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      suiteID: (json['suiteID'] as num).toInt(),
      groupIDs: (json['groupIDs'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      line: (json['line'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
      url: json['url'] as String?,
      rootLine: (json['rootLine'] as num?)?.toInt(),
      rootColumn: (json['rootColumn'] as num?)?.toInt(),
      rootUrl: json['rootUrl'] as String?,
      metadata: TestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestToJson(_Test instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'suiteID': instance.suiteID,
      'groupIDs': instance.groupIDs,
      'line': instance.line,
      'column': instance.column,
      'url': instance.url,
      'rootLine': instance.rootLine,
      'rootColumn': instance.rootColumn,
      'rootUrl': instance.rootUrl,
      'metadata': instance.metadata,
    };
