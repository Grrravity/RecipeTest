import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

void main() {
  group('Testing SwitchableList', () {
    testWidgets('onTap should return enabled as true',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              ingredientList: [
            "1 pound of Potatoes",
            "2 pints of Oil",
            "Green tea"
          ],
              stepList: [
            "Gently peel the potatoes, wash them and tell them cool stories. Then cut them in medium-sized slivers shape",
            "Put it in the hot oil and drink some tea while it's frying. Take them out light brown and eat them straight forward. Don't forget your tea"
          ],
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
              ingredientList: [
            "1 pound of Potatoes",
            "2 pints of Oil",
            "Green tea"
          ],
              stepList: [
            "Gently peel the potatoes, wash them and tell them cool stories. Then cut them in medium-sized slivers shape",
            "Put it in the hot oil and drink some tea while it's frying. Take them out light brown and eat them straight forward. Don't forget your tea"
          ],
              key: Key("SWITCH"),
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      await tester.tap(find.byKey(Key("SWITCH")));
      await tester.tap(find.byKey(Key("SWITCH")));

      await tester.pump(Duration(seconds: 1));
      expect(_isStep, false);
    });
    testWidgets('Should find Instruction & Ingredients text widget',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              ingredientList: [
            "1 pound of Potatoes",
            "2 pints of Oil",
            "Green tea"
          ],
              stepList: [
            "Gently peel the potatoes, wash them and tell them cool stories. Then cut them in medium-sized slivers shape",
            "Put it in the hot oil and drink some tea while it's frying. Take them out light brown and eat them straight forward. Don't forget your tea"
          ],
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      expect(find.text('Instruction'), findsOneWidget);
      expect(find.text('Ingredients'), findsOneWidget);
    });
    testWidgets(
        'Should find 12 text widgets (3 ingredient + 3 bullets , 2 steps + 2 step number, 2 titles)',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              ingredientList: [
            "1 pound of Potatoes",
            "2 pints of Oil",
            "Green tea"
          ],
              stepList: [
            "Gently peel the potatoes, wash them and tell them cool stories. Then cut them in medium-sized slivers shape",
            "Put it in the hot oil and drink some tea while it's frying. Take them out light brown and eat them straight forward. Don't forget your tea"
          ],
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      var text = find.byType(Text);
      expect(text, findsNWidgets(12));
    });
    testWidgets('Should find null substiture texts in lists',
        (WidgetTester tester) async {
      var _isStep = true;
      await tester.pumpWidget(MaterialApp(
          home: SwitchableList(
              ingredientList: [],
              stepList: [],
              isStep: _isStep,
              onChanged: (bool val) {
                _isStep = val;
              })));
      expect(find.text('This recipe requires nothing'), findsOneWidget);
      expect(find.text('This recipe has no instructions'), findsOneWidget);
    });
  });
  group("Testing DataInput widget", () {
    testWidgets("Should display an svg", (WidgetTester tester) async {
      int _data = 13;
      await tester.pumpWidget(MaterialApp(
        home: DataInput(
            asset: 'assets/icons/heart.svg',
            data: _data.toString() + " ",
            label: "Likes"),
      ));
      expect(PictureProvider.cacheCount, 1);
    });
    testWidgets("Should display '13 ' & 'Likes' as text",
        (WidgetTester tester) async {
      int _data = 13;
      await tester.pumpWidget(MaterialApp(
        home: DataInput(
            asset: 'assets/icons/heart.svg',
            data: _data.toString() + " ",
            label: "Likes"),
      ));
      expect(find.text('13 '), findsOneWidget);
      expect(find.text('Likes'), findsOneWidget);
    });
  });
}
