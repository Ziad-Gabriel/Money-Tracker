import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
    return CurvedNavigationBar(
      color: Theme.of(context).colorScheme.primary,
      backgroundColor: Colors.transparent,
      items: [
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
            currentIndex == 2
                ? Icons.account_balance_wallet_rounded
                : Icons.account_balance_wallet_outlined,
            size: 28,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
      animationDuration: const Duration(milliseconds: 250),
      animationCurve: Curves.easeInOut,
      height: 60,
      index: currentIndex,
      buttonBackgroundColor: Theme.of(context).colorScheme.secondary,
      onTap: onTap,
    );
  }
}
