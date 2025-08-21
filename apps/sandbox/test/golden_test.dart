import 'package:alchemist/alchemist.dart';
import 'package:allure_report/allure_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sandboxed/sandboxed.dart';
import 'package:test_reporter_sandbox/components.g.dart';

void main() {
  test("Hello world", () async {
    expect(0, equals(0));
  });

  for (final component in components) {
    for (final story in component.stories) {
      goldenTest(
        'Component: ${component.meta.name}, Story: ${story.name}',
        fileName: '${component.meta.name}.${story.name}',
        builder: () {
          Allure.tag('golden');
          return GoldenTestGroup(
            children: [
              ...[
                Theme(
                  data: ThemeData.light(),
                  child: StoryView(story: story),
                ),
                Theme(
                  data: ThemeData.dark(),
                  child: StoryView(story: story),
                ),
              ],
            ],
          );
        },
      );
    }
  }
}
