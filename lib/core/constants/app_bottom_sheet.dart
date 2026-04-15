import 'package:flutter/material.dart';

Future<dynamic> mainBottomSheet(
  BuildContext context, {
  required Widget myBottomSheet,
}) {
  return showModalBottomSheet(
    backgroundColor: Theme.of(context).colorScheme.surface,
    context: context,
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    showDragHandle: true,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: myBottomSheet,
      );
    },
  );
}
