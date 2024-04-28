import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_for_solid_software/cubit_example/cubit_example.dart';
import 'package:test_for_solid_software/notifier_example/color_state.dart';
import 'package:test_for_solid_software/notifier_example/inherited_color.dart';
import 'package:test_for_solid_software/notifier_example/notifier_example.dart';
import 'package:test_for_solid_software/set_state_example/set_state_example.dart';

void main() {
  ///This is SetStateExample test.
  group(
    'Widget test for SetStateExample',
    () {
      testWidgets('Smoke test', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: SetStateExample()));
        expect(find.byType(MaterialApp), findsOneWidget);
        expect(find.text('Hello there'), findsOneWidget);
      });
      group(
        'Gesture and rebuild with the new color test',
        () {
          testWidgets(
            'Tap test',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                const MaterialApp(home: SetStateExample()),
              );
              await tester.tap(find.text('Hello there'));
              await tester.pump();
              expect(
                find.byWidgetPredicate((widget) {
                  return widget is Scaffold &&
                      widget.backgroundColor == Colors.white;
                }),
                findsNothing,
              );
            },
          );
        },
      );
    },
  );

  ///This is the CubitExample test
  group(
    'Widget test for CubitExample',
    () {
      testWidgets('Smoke test', (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: CubitExample()));
        expect(find.byType(MaterialApp), findsOneWidget);
        expect(find.text('Hello there'), findsOneWidget);
      });
      group(
        'Gesture and rebuild with the new color test',
        () {
          testWidgets(
            'Tap test',
            (WidgetTester tester) async {
              await tester.pumpWidget(MaterialApp(home: CubitExample()));
              await tester.tap(find.text('Hello there'));
              await tester.pump();
              expect(
                find.byWidgetPredicate((widget) {
                  return widget is Scaffold &&
                      widget.backgroundColor == Colors.white;
                }),
                findsNothing,
              );
            },
          );
        },
      );
    },
  );

  ///This is NotifierExample test.
  group(
    'Widget test for NotifierExample',
    () {
      group('Smoke test', () {
        testWidgets(
          'Smoke test',
          (WidgetTester tester) async {
            await tester.pumpWidget(
              InheritedColor(
                colorState: ColorState(),
                child: const MaterialApp(home: NotifierExample()),
              ),
            );
            expect(find.byType(MaterialApp), findsOneWidget);
            expect(find.text('Hello there'), findsOneWidget);
          },
        );
      });
      group(
        'Gesture and rebuild test',
        () {
          testWidgets(
            'Tap test and rebuild with new background color',
            (WidgetTester tester) async {
              await tester.pumpWidget(
                InheritedColor(
                  colorState: ColorState(),
                  child: const MaterialApp(home: NotifierExample()),
                ),
              );
              await tester.tap(find.text('Hello there'));
              await tester.pump();
              expect(
                find.byWidgetPredicate((widget) {
                  return widget is Scaffold &&
                      widget.backgroundColor != Colors.white;
                }),
                findsOneWidget,
              );
            },
          );
        },
      );
    },
  );
}
