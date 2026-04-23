import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle appTextStyle = GoogleFonts.viga();

  static TextTheme get lightTextTheme {
    return TextTheme(
      titleLarge: appTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        wordSpacing: 2,
        letterSpacing: 0.5,
        color: Colors.white,
      ),
      bodyLarge: appTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        wordSpacing: 1.5,
        letterSpacing: 0.5,
        // color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }

  static TextTheme get darkTextTheme {
    return TextTheme(
      titleLarge: lightTextTheme.titleLarge,
      bodyLarge: lightTextTheme.bodyLarge
      );
  }
}
