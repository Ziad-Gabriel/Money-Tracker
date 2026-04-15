import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/buttons_text_style.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context); // Close the bottom sheet
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text("Cancel", style: buttonsText(context)),
    );
  }
}
