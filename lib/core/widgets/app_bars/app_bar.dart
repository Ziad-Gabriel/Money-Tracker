import 'package:flutter/material.dart';
import 'package:money_tracker/core/widgets/theme_switcher.dart';

AppBar mainAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Money Tracker",
      style: Theme.of(context).textTheme.titleLarge,
    ),
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
    actions: [ThemeSwitcher()],
  );
}
