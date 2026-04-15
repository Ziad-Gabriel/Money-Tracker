import 'package:flutter/material.dart';
import 'package:money_tracker/core/utils/navigate_to.dart';

Widget buttonDrawer(BuildContext context, String title, Widget widget) {
  return GestureDetector(
    onTap: () => navigateTo(context, widget),
    child: Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(title)),
    ),
  );
}
