import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:z_money/core/constants/app_text_styles/transaction_table_text_style.dart';
import 'package:z_money/features/transactions/data/transactions_data.dart';
import 'package:z_money/core/utils/app_format_money/money_counter_formatter.dart';

class TransactionsList extends ConsumerWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaction = ref.watch(transactionProvider);

    return ListView.builder(
      itemCount: transaction.length,
      itemBuilder: (context, index) => Card(
        elevation: 8,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.065,
          decoration: BoxDecoration(
            color: transaction[index].isAdd
                ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.25)
                : Theme.of(context).colorScheme.error.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: transaction[index].isAdd
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: transaction[index].isAdd
                      ? Image.asset('assets/image/wallet_add_white.png')
                      : Image.asset('assets/image/wallet_withdraw_white.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        transaction[index].date,
                        style: transactionListText(context),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        transaction[index].description,
                        style: transactionListText(context),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        formatMoney(transaction[index].amount),
                        style: transactionListText(context),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.info_outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
