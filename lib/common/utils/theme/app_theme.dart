import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'text_theme.dart';

class AppTheme {
  static var lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor,
      background: lightBackgroundColor,
      brightness: Brightness.light
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackgroundColor,
      foregroundColor: darkBackgroundColor,
    ),
    textTheme: AppTextTheme.lightTextTheme,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
      unselectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
  static var darkTheme = ThemeData(

    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      brightness: Brightness.dark,
      background: darkBackgroundColor,
    ),
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      foregroundColor: lightBackgroundColor,
      backgroundColor: darkBackgroundColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
