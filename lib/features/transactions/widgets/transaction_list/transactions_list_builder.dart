import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/utils/app_format_money/money_counter_formatter.dart';

import 'package:money_tracker/core/widgets/list_item_theme/lists_item_container.dart';
import 'package:money_tracker/features/transactions/data/transactions_data.dart';

class TransactionsList extends ConsumerWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaction = ref.watch(transactionProvider);

    return transaction.isEmpty
        ? Center(child: Text("Didn't have any transaction yet"))
        : ListView.builder(
      itemCount: transaction.length,
      itemBuilder: (context, index) => ListsItemContainer(
        color: transaction[index].isAdd
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.error,
        image: Image.asset(
          transaction[index].isAdd
              ? 'assets/image/wallet_add_white.png'
              : 'assets/image/wallet_withdraw_white.png'
        ),
        date: transaction[index].date,
              description: transaction[index].description,
              amount: formatMoney(transaction[index].amount),
      ),
    );
  }
}
