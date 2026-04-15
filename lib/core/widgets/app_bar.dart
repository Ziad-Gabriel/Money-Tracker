import 'package:flutter/material.dart';

AppBar mainAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title),
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
