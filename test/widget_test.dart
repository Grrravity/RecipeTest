import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

void main() {
  group('Testing Switch', () {
    testWidgets('onTap, should return enabled as true',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              key: Key("SWITCH"),
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      await tester.tap(find.byKey(Key("SWITCH")));
      await tester.pump(Duration(seconds: 1));
      expect(_isStep, false);
    });
    testWidgets(
        'onTap should return true even if tapped again during animation',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              key: Key("SWITCH"),
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      await tester.tap(find.byKey(Key("SWITCH")));

      await tester.pump(Duration(seconds: 1));
      await tester.tap(find.byKey(Key("SWITCH")));

      await tester.pump(Duration(seconds: 1));
      expect(_isStep, false);
    });
    testWidgets('Should find Instruction & Ingredients test widget',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      expect(find.text('Instruction'), findsOneWidget);
      expect(find.text('Ingredients'), findsOneWidget);
    });
  });
}
