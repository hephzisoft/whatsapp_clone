import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'text_theme.dart';

class AppTheme {
  static var lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        background: lightBackgroundColor,
        brightness: Brightness.light),
    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackgroundColor,
      foregroundColor: darkBackgroundColor,
    ),
    textTheme: AppTextTheme.lightTextTheme,
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: lightBackgroundColor,
    ),
  );

  static var darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      surface: darkBackgroundColor,
      brightness: Brightness.dark,
      background: darkBackgroundColor,
    ),
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(
      foregroundColor: lightBackgroundColor,
      backgroundColor: darkBackgroundColor,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: darkBackgroundColor,
    ),
  );
}
