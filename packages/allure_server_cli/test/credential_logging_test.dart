import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../bin/allures.dart' as cli;

void main() {
  test('redacts split, inline, repeated and comma-separated header arguments',
      () {
    expect(
      cli.redactHeaderArguments([
        '--host=localhost',
        '--header',
        'Authorization=secret,Cookie=session',
        '--header=X-Api-Key=token',
        '--verbose',
      ]),
      [
        '--host=localhost',
        '--header',
        '[REDACTED]',
        '--header=[REDACTED]',
        '--verbose',
      ],
    );
  });

  for (final malformed in [false, true]) {
    test('verbose output hides credentials (malformed: $malformed)', () async {
      const user = 'synthetic-user-927';
      const password = 'synthetic-password-381';
      const secrets = [
        'synthetic-bearer-123',
        'synthetic-cookie-456',
        'synthetic-api-key-789',
        'synthetic-custom-321',
      ];
      final result = await Process.run(
        Platform.resolvedExecutable,
        [
          'run',
          'bin/allures.dart',
          '--verbose',
          '--host=localhost',
          '--header',
          'aUtHoRiZaTiOn=Bearer ${secrets[0]},Cookie=${secrets[1]}',
          '--header=X-Api-Key=${secrets[2]}',
          '--header=Custom-Credential=${secrets[3]}',
          if (malformed) '--header=${secrets[0]}',
        ],
        environment: {
          'ALLURES_BASIC_AUTH_USER': user,
          'ALLURES_BASIC_AUTH_PASSWORD': password,
        },
      );
      final output = '${result.stdout}\n${result.stderr}';

      expect(result.exitCode, 0);
      expect(output, contains('[REDACTED]'));
      expect(output, isNot(contains(user)));
      expect(output, isNot(contains(password)));
      expect(output,
          isNot(contains(base64Encode(utf8.encode('$user:$password')))));

      for (final secret in secrets) {
        expect(output, isNot(contains(secret)));
      }

      if (malformed) {
        expect(output, contains('Invalid Header format'));
      } else {
        expect(output, contains('Dio Client created'));
        expect(output, contains('X-Api-Key=[REDACTED]'));
      }
    });
  }
}
