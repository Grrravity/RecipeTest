import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

void main() {
  group('Testing Switch', () {
    testWidgets('onTap, should return enabled as true',
        (WidgetTester tester) async {
      var _enabled = false;
      await tester.pumpWidget(MaterialApp(
          home: CustomSwitch(
              key: Key("SWITCH"),
              value: _enabled,
              onChanged: (bool val) {
                _enabled = val;
              })));
      await tester.tap(find.byKey(Key("SWITCH")));
      expect(_enabled, true);
    });
    testWidgets(
        'onTap should return true even if tapped again during animation',
        (WidgetTester tester) async {
      var _enabled = false;
      await tester.pumpWidget(MaterialApp(
          home: CustomSwitch(
              key: Key("SWITCH"),
              value: _enabled,
              onChanged: (bool val) {
                _enabled = val;
              })));
      await tester.tap(find.byKey(Key("SWITCH")));
      await tester.tap(find.byKey(Key("SWITCH")));
      expect(_enabled, true);
    });
    testWidgets('Should find Instruction & Ingredients test widget',
        (WidgetTester tester) async {
      var _enabled = false;
      await tester.pumpWidget(MaterialApp(
          home: CustomSwitch(
              value: _enabled,
              onChanged: (bool val) {
                _enabled = val;
              })));
      var text = find.byType(Text);
      expect(text, findsNWidgets(2));
      expect(find.text('Instruction'), findsOneWidget);
      expect(find.text('Ingredients'), findsOneWidget);
    });
  });
}
