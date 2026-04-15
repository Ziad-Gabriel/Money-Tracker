import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';

Widget showEditProfileDialog(BuildContext context) {
  return AlertDialog(
    backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
    title: Text(
      'Invalid Input',
      style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
    ),

    actions: [
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text('Cancel', style: mainText(context)),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text('Done', style: mainText(context)),
      ),
    ],
  );
}
