import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.redAccent;
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color backgroundContainer = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF000000);
  static const Color text2 = Color(0xFF424242);

  static ThemeData themeData() {
    return ThemeData(
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Inter',
            color: text2,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Inter',
            color: text2,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          iconTheme: IconThemeData(color: Color(0xFF4F4B3D)),
        ));
  }
}
