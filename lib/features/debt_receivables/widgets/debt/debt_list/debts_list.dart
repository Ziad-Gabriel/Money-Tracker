import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/utils/app_format_money/money_counter_formatter.dart';

import 'package:money_tracker/core/widgets/list_item_theme/lists_item_container.dart';
import 'package:money_tracker/features/debt_receivables/data/debts_data.dart';

class DebtsList extends ConsumerWidget {
  const DebtsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final debtsList = ref.watch(debtsDataProvider);
    return debtsList.isEmpty
        ? Center(child: Text("Didn't have any debt"))
        : ListView.builder(
            itemCount: debtsList.length,
            itemBuilder: (context, index) => ListsItemContainer(
              color: Theme.of(context).colorScheme.primary,
              image: Image.asset('assets/image/wallet_withdraw_white.png'),
              date: debtsList[index].endDate,
              description: debtsList[index].name,
              amount: formatMoney(debtsList[index].amount),
            ),
          );
  }
}
