import 'package:flutter/material.dart';
import 'package:money_tracker/features/transactions/widgets/transaction_list/transactions_list_builder.dart';

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
              SizedBox(width: 40, child: Center(child: Text('label'))),
              Expanded(child: Center(child: Text('date'))),
              Expanded(child: Center(child: Text('description'))),
              Expanded(child: Center(child: Text('amount'))),
              SizedBox(width: 40),
            ],
          ),
          Expanded(child: TransactionsList()),
        ],
      ),
    );
  }
}
