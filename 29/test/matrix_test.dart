import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:math/screens/matrix.dart';

void main() {
  testWidgets('Test icon in widget', (WidgetTester tester) async {
    await tester.pumpWidget(matrix());
    expect(find.widgetWithIcon(matrix,Icons.search), findsOneWidget);
    expect(find.widgetWithIcon(matrix,Icons.home), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
}
