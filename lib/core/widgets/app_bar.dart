import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/app_bar_title.dart';

AppBar mainAppBar(BuildContext context, String title) {
  return AppBar(
    title: AppBarTitle(title: title),
    centerTitle: true,

    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
    ),
  );
}
