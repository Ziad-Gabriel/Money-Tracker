import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFf2f2f2),
      titleTextStyle: TextStyle(
        color: Color(0xFF0D0D0D),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: Color(0xFF1E1E1E),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF188A73),
      secondary: Color(0xFF1AF4AB),
      surface: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD9D9D9),
      secondaryContainer: Color(0xFFC3C3C3),
      onPrimary: Color(0xFF1E1E1E),
      onSecondary: Color(0xFF2A2A2A),
      onSurface: Color(0xFF5B5B5B),
      error: Color(0xFFAE0000),
      onError: Color(0xFFFD3434),
    ),
  );
}
