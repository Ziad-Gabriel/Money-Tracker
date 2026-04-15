import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';
import 'package:z_money/core/utils/navigate_to.dart';

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
      child: Center(child: Text(title, style: mainText(context))),
    ),
  );
}
