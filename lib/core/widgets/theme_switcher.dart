import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/theme/theme_provider.dart';

class ThemeSwitcher extends ConsumerStatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  ConsumerState<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends ConsumerState<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider);
    final isDark =
        (themeMode == ThemeMode.dark) ||
        (themeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isDark
                ? Icon(Icons.dark_mode_outlined, color: Colors.white)
                : Icon(Icons.light_mode_outlined, color: Colors.white),
            Switch(
              activeThumbColor: Colors.white,
              value: isDark,
              onChanged: (value) {
                themeNotifier.toggleTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
