import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context); // Close the bottom sheet
      },
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text("Cancel", style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
