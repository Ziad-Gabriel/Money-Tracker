import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_sized.dart';
import 'package:z_money/features/debts/view/debt_view.dart';

class HomeDebt extends StatelessWidget {
  const HomeDebt({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DebtView()),
      ),
      child: Card(
        elevation: 10,
        color: Theme.of(context).colorScheme.surface,
        child: SizedBox(
          height: bannersHeight(context),
          child: Center(
            child: Text(
              'Your debts',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
