// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.grey.shade700,
    primaryColorLight: Colors.grey.shade400,
    primaryColorDark: Colors.grey.shade900,
    fontFamily: 'Quicksand',
    textTheme: TextTheme(
        headline4: TextStyle(
          fontFamily: 'Quicksand',
          color: Colors.white70,
        ),
        headline6: TextStyle(
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
          color: Colors.white70,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Quicksand',
          color: Colors.white70,
        ),
        subtitle2: TextStyle(
          fontFamily: 'Quicksand',
          color: Colors.white70,
        )),
    buttonColor: Colors.grey.shade700,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline3: TextStyle(
          color: Colors.white54,
        ),
      ),
    ),
  );
}

CupertinoThemeData cupertinoThemeData() {
  return CupertinoThemeData(
    primaryColor: Colors.grey.shade700,
    primaryContrastingColor: Colors.grey.shade400,
    barBackgroundColor: Colors.grey.shade900,
    textTheme: CupertinoTextThemeData(
      primaryColor: Colors.white70,
      textStyle: TextStyle(
        fontFamily: 'Quicksand',
        color: Colors.white70,
      ),
    ),
  );
}
