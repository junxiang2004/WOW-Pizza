import 'package:flutter_test/flutter_test.dart';
import 'package:wow_pizza/main.dart';

void main() {
  testWidgets('WOW Pizza home page smoke test', (WidgetTester tester) async {
    // Build the WOW Pizza app.
    await tester.pumpWidget(const WOWPizzaApp());

    // Verify that the home page displays correctly.
    expect(find.text('WOW Pizza'), findsOneWidget);
    expect(find.text('Our Menu'), findsOneWidget);
    expect(find.text('About Us'), findsOneWidget);
    expect(find.text('Contact Us'), findsOneWidget);
  });
}
