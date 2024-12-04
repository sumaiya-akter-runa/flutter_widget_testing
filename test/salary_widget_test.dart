import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_testing/home_page.dart';


void main() {

//widget testing

  testWidgets('Calculate salary based on hours input', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Verify initial state
    expect(find.text('0'), findsNothing);

    // Enter hours in the TextField
    await tester.enterText(find.byKey(Key('hoursInput')), '10');

    // Tap the calculate button
    await tester.tap(find.byKey(Key('calculateButton')));
    await tester.pump(); // Rebuild the widget tree

    // Verify the salary is calculated correctly
    expect(find.text('5000'), findsOneWidget);
  });

  group("multiple Widget Test", (){


    testWidgets('Calculate salary based on hours input 1', (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(MaterialApp(home: HomePage()));

      // Verify initial state
      expect(find.text('0'), findsNothing);

      // Enter hours in the TextField
      await tester.enterText(find.byKey(Key('hoursInput')), '10');

      // Tap the calculate button
      await tester.tap(find.byKey(Key('calculateButton')));
      await tester.pump(); // Rebuild the widget tree

      // Verify the salary is calculated correctly
      expect(find.text('5000'), findsOneWidget);
    });

    testWidgets('Calculate salary based on hours input 2', (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(MaterialApp(home: HomePage()));

      // Verify initial state
      expect(find.text('0'), findsNothing);

      // Enter hours in the TextField
      await tester.enterText(find.byKey(Key('hoursInput')), '5');

      // Tap the calculate button
      await tester.tap(find.byKey(Key('calculateButton')));
      await tester.pump(); // Rebuild the widget tree

      // Verify the salary is calculated correctly
      expect(find.text('2500'), findsOneWidget);
    });

  }
  );

}