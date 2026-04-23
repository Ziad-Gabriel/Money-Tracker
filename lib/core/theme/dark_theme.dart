import 'package:flutter/material.dart';
import 'package:money_tracker/core/constants/app_colors/dark_theme_color_scheme.dart';
import 'package:money_tracker/core/constants/app_text_styles/text_theme.dart';

class DarkTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF0F0F0F),
    colorScheme: DarkThemeColorScheme.darkColorScheme,
    textTheme: AppTextStyles.darkTextTheme
  );
}
