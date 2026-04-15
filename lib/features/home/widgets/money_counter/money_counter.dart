import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/constants/app_sized.dart';
import 'package:money_tracker/core/utils/app_format_money/money_counter_formatter.dart';
import 'package:money_tracker/features/home/data/money_data.dart';

class MoneyCounter extends ConsumerWidget {
  const MoneyCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = ref.watch(amountProvider);
    return Container(
      width: moneyCounterWidth(context),
      height: moneyCounterHeight(context),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(124, 0, 0, 0),
            blurRadius: 3,
            offset: Offset(1.5, 1.5),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Center(child: Text(formatMoney(amount))),
    );
  }
}
