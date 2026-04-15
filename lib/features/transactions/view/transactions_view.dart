import 'package:flutter/material.dart';
import 'package:z_money/core/widgets/littel_money_counter.dart';
import 'package:z_money/features/transactions/widgets/buttons/labels_button.dart';
import 'package:z_money/features/transactions/widgets/transaction_list/transactions_list_container.dart';

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
          LabelsButton(),
        ],
      ),
    );
  }
}
