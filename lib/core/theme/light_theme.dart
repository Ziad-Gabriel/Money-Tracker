import 'package:flutter/material.dart';
import 'package:money_tracker/core/constants/app_colors/light_theme_color_scheme.dart';
import 'package:money_tracker/core/constants/app_text_styles/text_theme.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: Color(0xFF1E1E1E),
    ),
    colorScheme: LightThemeColorScheme.lightColorScheme,
    textTheme: AppTextStyles.lightTextTheme
  );
}
