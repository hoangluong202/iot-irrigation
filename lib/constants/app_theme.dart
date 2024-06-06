import 'package:flutter/material.dart';

// class CustomColor {
//   static const Color backgroundColor = Color(0xfff8f8f8);
//   static const Color primaryColor = Color(0xff52A447);
//   static const Color waterColor = Color(0xff00B4D8);
//   static const Color boldTextColor = Color(0xff000000);
//   static const Color lightTextColor = Color(0xff677079);
// }

class AppThemeData {
  AppThemeData._();

  static ThemeData themeData() {
    return ThemeData(
      colorScheme: lightColorScheme,
      textTheme: textTheme,
      useMaterial3: true,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      onPrimary: Color(0xff00B4D8),
      primary: Color(0xff52A447),
      secondary: Color(0xff00B4D8),
      onSecondary: Color(0xff52A447),
      error: Color(0xff52A447),
      onError: Color(0xff52A447),
      background: Color(0xffffffff),
      onBackground: Color(0xfff8f8f8),
      surface: Color(0xff52A447),
      onSurface: Color(0xff52A447));

  static const _light = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static const Color boldTextColor = Color(0xff000000);
  static const Color lightTextColor = Color(0xff677079);

  static const TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(fontSize: 30, fontFamily: 'OpenSans', fontWeight: _bold, color: boldTextColor),
    titleMedium: TextStyle(fontSize: 25, fontFamily: 'OpenSans', fontWeight: _bold, color: boldTextColor),
    titleSmall: TextStyle(
        fontSize: 15,
        fontFamily: 'OpenSans',
        fontWeight: _bold,
        color: boldTextColor),
    labelMedium: TextStyle(fontSize: 15, fontFamily: 'OpenSans', fontWeight: _regular, color: boldTextColor),
    displayLarge: TextStyle(fontSize: 20, fontFamily: 'OpenSans', fontWeight: _regular, color: boldTextColor),
    displayMedium: TextStyle(fontSize: 15, fontFamily: 'OpenSans', fontWeight: _regular, color: boldTextColor),
    displaySmall: TextStyle(fontSize: 12, fontFamily: 'OpenSans', fontWeight: _regular, color: boldTextColor),
  );
}