import 'package:flutter_test/flutter_test.dart';
import 'package:math/tab_screens/tab_tool.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(tab_tool());
  });
}