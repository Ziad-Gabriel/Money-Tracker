import 'package:flutter/material.dart';
import 'package:money_tracker/core/constants/app_colors/const_colors.dart';

class LightThemeColorScheme {
  static ColorScheme get lightColorScheme {
    return ColorScheme.light(
      primary: primaryColor,
      secondary: Color.fromARGB(255, 2, 94, 65),
      surface: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD9D9D9),
      secondaryContainer: Color(0xFFC3C3C3),
      onPrimary: onPrimaryColor,
      onSurface: Color(0xFF1E1E1E),
      tertiary: tertiaryColor,
      error: errorColor,
    );
  }
}
