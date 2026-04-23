import 'package:flutter/material.dart';
import 'package:money_tracker/core/constants/app_colors/const_colors.dart';

class DarkThemeColorScheme {

  static ColorScheme get darkColorScheme{
    return ColorScheme.dark(
      primary: primaryColor,
      secondary: Color.fromARGB(255, 10, 207, 145),
      surface: Color(0xFF0F0F0F),
      primaryContainer: Color(0xFF262626),
      secondaryContainer: Color(0xFF505050),
      onPrimary: onPrimaryColor,
      onSurface: Color(0xFFf2f2f2),
      tertiary: tertiaryColor,
      error: errorColor,
    );
  }
}