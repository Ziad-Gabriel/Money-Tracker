import 'package:flutter/material.dart';
import 'package:money_tracker/core/widgets/littel_money_counter.dart';
import 'package:money_tracker/features/transactions/widgets/transaction_list/transactions_list_container.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LittelMoneyCounter(),
          Divider(),
          Expanded(child: TransactionsListContainerView()),
          Divider(),
        ],
      ),
    );
  }
}
