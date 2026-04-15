import 'package:flutter/material.dart';

Future<DateTime?> showCustomDatePicker(BuildContext context) async {
  return await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(DateTime.now().year - 5),
    lastDate: DateTime.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.dark(
            primary: Color.fromARGB(
              255,
              255,
              255,
              255,
            ), // Header background color
            onPrimary: Color.fromARGB(255, 0, 0, 0), // Header text color
            onSurface: Color.fromARGB(255, 255, 255, 255), // Body text color
          ),
          dialogTheme: DialogThemeData(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        child: child!,
      );
    },
  );
}
