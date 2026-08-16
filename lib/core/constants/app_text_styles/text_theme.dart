import 'package:flutter/material.dart';

class AppTextStyles {
  static final TextStyle appTextStyle = TextStyle();

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
      bodyMedium: appTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        wordSpacing: 1.5,
        letterSpacing: 0.5,
        // color: Theme.of(context).colorScheme.onPrimary,
      ),
      bodySmall: appTextStyle.copyWith(
        fontSize: 12,
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
      bodyLarge: lightTextTheme.bodyLarge,
      bodyMedium: lightTextTheme.bodyMedium,
      bodySmall: lightTextTheme.bodySmall,
    );
  }
}
