import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

void main() {
  late HttpServer server;
  late Directory temporary;
  late File archive;
  late List<String> requests;
  late List<Map<String, dynamic>> reports;
  var uploadStatus = 200;
  var reportStatus = 200;

  setUp(() async {
    temporary = await Directory.systemTemp.createTemp('allures-test-');
    archive =
        await File('${temporary.path}/results.zip').writeAsBytes([1, 2, 3]);
    requests = [];
    reports = [];
    uploadStatus = 200;
    reportStatus = 200;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) async {
      requests.add(request.uri.path);
      final body = await utf8.decoder.bind(request).join();
      final isUpload = request.uri.path == '/api/result';

      if (!isUpload) {
        reports.add(jsonDecode(body) as Map<String, dynamic>);
      }

      request.response
        ..statusCode = isUpload ? uploadStatus : reportStatus
        ..headers.contentType = ContentType.json
        ..write(
          jsonEncode(
            isUpload
                ? {'fileName': 'results.zip', 'uuid': 'uploaded-result'}
                : {
                    'uuid': 'report-id',
                    'path': 'project',
                    'url': 'http://example.test/report',
                    'latest': 'http://example.test/latest',
                  },
          ),
        );
      await request.response.close();
    });
  });

  tearDown(() async {
    await server.close(force: true);
    await temporary.delete(recursive: true);
  });

  Future<ProcessResult> runCli(List<String> arguments) {
    return Process.run(
      Platform.resolvedExecutable,
      [
        'run',
        'bin/allures.dart',
        '--host',
        'http://127.0.0.1:${server.port}',
        ...arguments,
      ],
      workingDirectory: Directory.current.path,
    );
  }

  test('upload HTTP failures exit nonzero', () async {
    uploadStatus = 500;
    final result = await runCli(['upload', archive.path]);

    expect(result.exitCode, 1);
    expect(requests, ['/api/result']);
  });

  test('successful upload exits zero', () async {
    final result = await runCli(['upload', archive.path]);

    expect(result.exitCode, 0);
    expect(requests, ['/api/result']);
  });

  test('report HTTP failures exit nonzero', () async {
    reportStatus = 500;
    final result = await runCli(['report', '--results', 'existing']);

    expect(result.exitCode, 1);
    expect(requests, ['/api/report']);
  });

  test('required upload failure prevents report and further uploads', () async {
    uploadStatus = 503;
    final result = await runCli([
      'report',
      '--results',
      'existing',
      '--upload',
      '${archive.path},${archive.path}',
    ]);

    expect(result.exitCode, 1);
    expect(requests, ['/api/result']);
  });

  test('missing required upload prevents report', () async {
    final result = await runCli([
      'report',
      '--upload',
      '${temporary.path}/missing.zip',
    ]);

    expect(result.exitCode, 1);
    expect(requests, isEmpty);
  });

  test('successful report includes uploaded and existing results', () async {
    final result = await runCli([
      'report',
      '--results',
      'existing',
      '--upload',
      archive.path,
    ]);

    expect(result.exitCode, 0);
    expect(requests, ['/api/result', '/api/report']);
    expect(reports.single['results'], ['existing', 'uploaded-result']);
    expect(result.stdout, contains('Report available at:'));
  });

  for (final arguments in <List<String>>[
    ['upload'],
    ['upload', 'one.zip', 'two.zip'],
    ['report', 'unexpected'],
    ['--unknown'],
    [],
  ]) {
    test(
      'invalid arguments $arguments exit nonzero without requests',
      () async {
        final result = await runCli(arguments);

        expect(result.exitCode, 2);
        expect(requests, isEmpty);
      },
    );
  }
}
