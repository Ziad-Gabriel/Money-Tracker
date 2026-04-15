import 'package:flutter/material.dart';

Widget showAlertDialog(BuildContext context, String message) {
  return AlertDialog(
    backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
    title: Text(
      'Invalid Input',
      style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
    ),
    content: Text(message),
    actions: [
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text('OK'),
      ),
    ],
  );
}
