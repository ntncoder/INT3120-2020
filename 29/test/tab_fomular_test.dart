import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:math/tab_screens/tab_formula.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(tab_formula());

    // Verify that our counter starts at 0.
    expect(find.text('Đại số'), findsOneWidget);
    expect(find.text('Ma trận'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Đại số'), findsNothing);
    expect(find.text('Ma trận'), findsOneWidget);
  });
}
