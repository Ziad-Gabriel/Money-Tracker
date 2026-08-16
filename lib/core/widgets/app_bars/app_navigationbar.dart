import 'package:flutter/material.dart';

/// A custom bottom navigation bar for the Zmoney app.
class MainNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const MainNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      height: 60,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              currentIndex == 1 ? Icons.home_rounded : Icons.home_outlined,
              size: 28,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              currentIndex == 0
                  ? Icons.monetization_on_rounded
                  : Icons.monetization_on_outlined,
              size: 28,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
