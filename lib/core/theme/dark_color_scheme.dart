import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF0D0D0D),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0D0D0D),
      titleTextStyle: TextStyle(
        color: Color(0xFFf2f2f2),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: Color(0xFFb3b3b3),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF188A73),
      secondary: Color(0xFF0B5647),
      surface: Color(0xFF0D0D0D),
      primaryContainer: Color(0xFF262626),
      secondaryContainer: Color(0xFF505050),
      onPrimary: Color(0xFFf2f2f2),
      onSecondary: Color(0xFFb3b3b3),
      onSurface: Color(0xFFf2f2f2),
      onPrimaryContainer: Color(0xFFD9D9D9),
      error: Color(0xFFAE0000),
      onError: Color(0xFF700000),
    ),
  );
}
