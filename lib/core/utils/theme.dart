import 'package:flutter/material.dart';

const Color PrimaryColor = const Color(0xFFFFFFFF);
const Color SecondaryColor = const Color(0xFF20CAD1);
const Color Background = const Color(0xFFFFFFFF);

const Color PrimaryTextColor = const Color(0xFF161531);
const Color SecondaryTextColor = const Color(0xFF2A2E2E);
const Color LightTextColor = const Color(0xFF626C72);

const String MainText = "SSN-Medium";
const String RomanText = "SSN-Roman";
const String BoldText = "SSN-Bold";

const TextStyle Title1 = TextStyle(
  fontFamily: BoldText,
  fontSize: 33,
  color: PrimaryTextColor,
);

const TextStyle Title2 = TextStyle(
  fontFamily: BoldText,
  fontSize: 30,
  color: SecondaryTextColor,
);
const TextStyle Title3 = TextStyle(
  fontFamily: BoldText,
  fontSize: 28,
  color: SecondaryColor,
);
const TextStyle Subtitle = TextStyle(
  fontFamily: RomanText,
  fontSize: 16,
  color: SecondaryTextColor,
);
const TextStyle Legend = TextStyle(
  fontFamily: MainText,
  fontSize: 10,
  color: PrimaryTextColor,
);
const TextStyle Body1 = TextStyle(
  fontFamily: MainText,
  fontSize: 18,
  color: SecondaryTextColor,
);
const TextStyle Body1Light = TextStyle(
    fontFamily: RomanText, fontSize: 14, color: LightTextColor, height: 1.5);

const TextStyle Button = TextStyle(
  fontFamily: MainText,
  fontSize: 16,
  color: SecondaryTextColor,
);

class MyTheme {
  static final ThemeData defaultTheme = _buildLightTheme();

  static ThemeData _buildLightTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
        accentColor: PrimaryColor,
        accentColorBrightness: Brightness.dark,
        primaryColor: PrimaryColor,
        primaryColorBrightness: Brightness.dark,
        buttonTheme: base.buttonTheme.copyWith(
          buttonColor: PrimaryColor,
          textTheme: ButtonTextTheme.primary,
        ),
        scaffoldBackgroundColor: Background,
        cardColor: Background,
        backgroundColor: Background,
        buttonColor: PrimaryColor,
        iconTheme: base.iconTheme.copyWith(color: PrimaryColor),
        textTheme: base.textTheme.copyWith(
          headline4: base.textTheme.headline4!.merge(Title1),
          headline5: base.textTheme.headline5!.merge(Title2),
          headline6: base.textTheme.headline6!.merge(Title3),
          subtitle1: base.textTheme.subtitle1!.merge(Subtitle),
          bodyText1: base.textTheme.bodyText1!.merge(Body1),
          bodyText2: base.textTheme.bodyText2!.merge(Body1Light),
          button: base.textTheme.button!.merge(Button),
          caption: base.textTheme.caption!.merge(Legend),
        ));
  }
}
