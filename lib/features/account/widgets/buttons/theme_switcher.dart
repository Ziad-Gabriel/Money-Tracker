import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';
import 'package:z_money/core/theme/theme_provider.dart';

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
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Dark Mode', style: mainText(context)),
            Switch(
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
