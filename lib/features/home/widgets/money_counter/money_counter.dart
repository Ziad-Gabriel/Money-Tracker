import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:z_money/core/constants/app_sized.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';
import 'package:z_money/features/home/data/money_data.dart';
import 'package:z_money/core/utils/app_format_money/money_counter_formatter.dart';

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
      child: Center(
        child: Text(formatMoney(amount), style: moneyCounterText(context, 24)),
      ),
    );
  }
}
