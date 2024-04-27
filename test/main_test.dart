import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_for_solid_software/set_state_example/set_state_example.dart';

void main() {
  group('Widget test', () {
    testWidgets('Smoke test', (WidgetTester tester) async {
      await tester.pumpWidget(const SetStateExample());
      expect(find.byType(MaterialApp), findsOneWidget);
      expect(find.text('Hello there'), findsOneWidget);
    });
    group('Gesture test', () {
      testWidgets('Tap test', (WidgetTester tester) async {
        await tester.pumpWidget(const SetStateExample());
        await tester.tap(find.text('Hello there'));
        await tester.pump();
        expect(
          find.byWidgetPredicate((widget) {
            return widget is Scaffold && widget.backgroundColor == Colors.white;
          }),
          findsNothing,
        );
      });
    });
  });
}
