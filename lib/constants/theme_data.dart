import 'package:flutter/material.dart';

//SPECIAL COLORS
const Color kAwakenColor = Colors.white;
const Color kAbilityColor = Colors.blue;
const Color kAptitudeColor = Colors.green;
const Color kAdventureColor = Colors.orange;
const Color kAcademyColor = Colors.yellow;
const Color kAwarenessColor = Colors.purple;
const Color kAcumenColor = Colors.grey;
const Color kReadColor = Colors.red;

//PRIMARY COLORS
Color kPrimaryColor = Colors.grey.shade700;
Color kPrimaryColorLight = Colors.grey.shade300;
Color kPrimaryColorDark = Colors.grey.shade900;
Color kOpacityColorDark = Colors.black38;

//DEFAULT THINGS
BorderRadius kprimaryBorderRadius = BorderRadius.circular(10);
Radius ksecondaryBorderRadius = Radius.circular(15);
EdgeInsets kPrimaryEdgeInsets = EdgeInsets.all(10);
EdgeInsets kSecondaryEdgeInsets = EdgeInsets.all(20);

//THEME DATA
ThemeData themeData() {
  final TextStyle _textStyle = TextStyle(
      fontFamily: 'Roboto',
      color: kPrimaryColorLight,
      shadows: [Shadow(offset: Offset.fromDirection(0, 1.5), blurRadius: 5)]);

  return ThemeData(
    canvasColor: kPrimaryColorDark,
    primarySwatch: Colors.grey,
    primaryColor: kPrimaryColor,
    primaryColorLight: kPrimaryColorLight,
    primaryColorDark: kPrimaryColorDark,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline4: _textStyle,
      headline5: _textStyle,
      headline6: _textStyle.copyWith(fontWeight: FontWeight.bold),
      subtitle1: _textStyle.copyWith(
        shadows: [Shadow(offset: Offset.zero, blurRadius: 0)],
        color: kPrimaryColorDark,
      ),
      subtitle2: _textStyle.copyWith(fontWeight: FontWeight.bold),
      bodyText1: _textStyle,
      bodyText2: _textStyle.copyWith(fontWeight: FontWeight.bold),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
    ),
  );
}
