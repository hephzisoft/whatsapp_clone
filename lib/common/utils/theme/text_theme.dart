import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors.dart';

class AppTextTheme {
  static var lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      color: lightPrimaryColor,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.poppins(
      color: darkBackgroundColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.poppins(
        color: darkBackgroundColor, fontWeight: FontWeight.normal),
  );

  static var darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      color: lightBackgroundColor,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.poppins(
      color: lightBackgroundColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.poppins(
        color: lightBackgroundColor, fontWeight: FontWeight.normal),
  );
}
