import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:money_tracker/core/theme/dark_theme.dart';
import 'package:money_tracker/core/theme/light_theme.dart';
import 'package:money_tracker/core/theme/theme_provider.dart';
import 'package:money_tracker/main_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ProviderScope(child: const Zmoney()));
}

class Zmoney extends ConsumerWidget {
  const Zmoney({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: themeMode,
      home: const MainView(),
    );
  }
}
