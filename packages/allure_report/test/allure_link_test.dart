import 'dart:async';

import 'package:allure_report/allure_report.dart';
import 'package:test/test.dart';

void main() {
  const urls = [
    'BUG-1',
    'https://example.com/BUG-1',
    'http://example.com:8080/BUG-1',
    'https://example.com:8443/issues/BUG:1/details:latest',
    'https://example.com/issues/BUG:1?next=urn:issue:2#section:3',
  ];

  for (final url in urls) {
    test('parses link metadata and preserves $url', () {
      final link = AllureLink.fromEvent('link:issue:BUG-1:$url');

      expect(link.type, 'issue');
      expect(link.name, 'BUG-1');
      expect(link.link, url);
    });

    test('passes $url from Allure.link to the reporter', () {
      final messages = <String>[];
      final reporter = AllureReporter();
      runZoned(
        () => Allure.link(
          url,
          'BUG-1',
          'issue',
        ),
        zoneSpecification: ZoneSpecification(
          print: (self, parent, zone, message) => messages.add(message),
        ),
      );

      expect(messages.single, 'allure:event:link:issue:BUG-1:$url');
      reporter.handleCustomEvent(
        messages.single.substring('allure:event:'.length),
        1,
      );
      final link = reporter.links[1]!.single;

      expect(link.type, 'issue');
      expect(link.name, 'BUG-1');
      expect(link.link, url);
    });
  }
}
