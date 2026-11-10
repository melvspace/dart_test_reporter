import 'dart:convert';
import 'dart:io';

import 'package:allure_server_cli/src/args.dart';
import 'package:allure_server_cli/src/logger.dart';
import 'package:allure_server_cli/src/report_command.dart';
import 'package:allure_server_cli/src/upload_command.dart';
import 'package:args/args.dart';
import 'package:dio/dio.dart';

// TODO(@melvspace): 06/09/24 from package info
const String version = '1.0.0';

void printUsage(ArgParser argParser) {
  print('Usage: allures <flags> [arguments]');
  print(argParser.usage);
  print('');

  print('Available commands');
  final commands = argParser.commands.entries
      .map((e) => '${e.key}\n\t${e.value.usage.replaceAll('\n', '\n\t')}')
      .join('\n\t');

  print('\t$commands');
}

Future<void> main(List<String> arguments) async {
  final ArgParser argParser = buildParser();

  try {
    final ArgResults results = argParser.parse(arguments);
    logFilter.verbose = results.wasParsed('verbose');

    if (results.wasParsed('version')) {
      l.i('allures version: $version');

      return;
    }

    // Process the parsed arguments.
    if (arguments.isEmpty || results.wasParsed('help')) {
      printUsage(argParser);

      return;
    }

    // Act on the arguments provided.
    l.i('Positional arguments: ${results.rest}');
    l.d('All arguments: ${redactHeaderArguments(results.arguments)}');

    if (!results.wasParsed('host')) {
      throw FormatException('host was not provided');
    }

    var headers = results.multiOption('header').map((e) {
      final match = RegExp(r'^([^=\s]+)=(.+)$').firstMatch(e);

      if (match == null) {
        throw FormatException(
          'Invalid Header format. '
          'Expected Header in format `KEY=VALUE`',
        );
      }

      final header = match.group(1)!;
      final value = match.group(2)!;

      return MapEntry(header, value);
    });

    l.d('Headers: ${headers.map((header) => '${header.key}=[REDACTED]')}');

    var host = results.option('host')!;
    var api = results.option('api')!;

    if (!host.startsWith(RegExp(r'https?://'))) {
      host = 'https://$host';
    }

    l.d('Host Options: ${{'host': host, 'api': api}}');

    final dio = Dio(
      BaseOptions(
        baseUrl: '$host$api',
        headers: {
          if (getAuthorizationFromEnvironment()
              case MapEntry(:final key, :final value))
            key: value,
          ...Map.fromEntries(headers),
        },
      ),
    );

    l.d('Dio Client created with host base: ${dio.options.baseUrl}');

    if (results.command == null) {
      throw FormatException('A command is required');
    }

    if (results.command case ArgResults command) {
      switch (command.name) {
        case 'report':
          if (command.rest.isNotEmpty) {
            throw FormatException('Unexpected report arguments');
          }

          l.i(
            'Sending report to Allure Server: '
            '${redactHeaderArguments(command.arguments)}',
          );

          final result = await ReportCommand(
            params: Params(
              path: command.multiOption('path'),
              executor: Executor.fromArgs(command),
              upload: command.multiOption('upload'),
              results: command.multiOption('results'),
              deleteResults: command.flag('delete-results'),
            ),
          ).execute(dio);

          if (result == null) {
            exitCode = 1;
          }

        case 'upload':
          if (command.rest.length != 1) {
            throw FormatException('upload requires exactly one archive path');
          }

          final file = command.rest.single;
          l.i(
            'Sending report archive to Allure Server: '
            '${redactHeaderArguments(command.arguments)}',
          );

          final result = await UploadCommand(file: file).execute(dio);

          if (result == null) {
            exitCode = 1;
          }
      }
    }
  } on FormatException catch (e, trace) {
    exitCode = 2;
    l.e(e.message, stackTrace: trace);
    print('');
    printUsage(argParser);
  }
}

MapEntry<String, String>? getAuthorizationFromEnvironment() {
  if (Platform.environment.containsKey('ALLURES_BASIC_AUTH_USER') &&
      Platform.environment.containsKey('ALLURES_BASIC_AUTH_PASSWORD')) {
    final user = Platform.environment['ALLURES_BASIC_AUTH_USER'];
    final password = Platform.environment['ALLURES_BASIC_AUTH_PASSWORD'];

    return MapEntry(
      "Authorization",
      "Basic ${base64.encode(utf8.encode('$user:$password'))}",
    );
  }

  return null;
}

List<String> redactHeaderArguments(List<String> arguments) {
  var headerValueExpected = false;

  return arguments.map((argument) {
    if (headerValueExpected) {
      headerValueExpected = false;

      return '[REDACTED]';
    }

    if (argument == '--header') {
      headerValueExpected = true;

      return argument;
    }

    if (argument.startsWith('--header=')) {
      return '--header=[REDACTED]';
    }

    return argument;
  }).toList();
}
