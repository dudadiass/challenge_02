import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFFF5252);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static Color backgroundContainer = Colors.grey.shade200;
  static const Color textColor = Color(0xFF000000);
  static const Color textColor2 = Color(0xFF9E9E9E);
  static const Color textColor3 = Color(0xFFFFFFFF);
  static const Color iconMenu = Color(0xFF424242);
  static const Color iconPets = Color(0xFF9E9E9E);
  static const Color iconPets2 = Color(0xFFFFFFFF);
  static const Color iconFavoriteContainer = Color(0xFFFFCDD2);

  static ThemeData themeData() {
    return ThemeData(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          headline4: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontFamily: 'Inter',
            color: textColor2,
            fontSize: 13,
          ),
          headline6: TextStyle(
            fontFamily: 'Inter',
            color: textColor,
            fontSize: 13,
          )),
      appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          iconTheme: IconThemeData(color: iconPets)),
    );
  }
}
