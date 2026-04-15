import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/transaction_table_text_style.dart';
import 'package:z_money/features/transactions/widgets/transaction_list/transactions_list_builder.dart';

class TransactionsListContainerView extends StatelessWidget {
  const TransactionsListContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                child: Center(
                  child: Text('label', style: transactionListText(context)),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('date', style: transactionListText(context)),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'description',
                    style: transactionListText(context),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('amount', style: transactionListText(context)),
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          Expanded(child: TransactionsList()),
        ],
      ),
    );
  }
}
