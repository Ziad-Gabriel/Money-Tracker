import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:z_money/core/utils/date_formatter.dart';
import 'package:z_money/features/home/data/money_data.dart';
import 'package:z_money/features/transactions/data/transactions_data.dart';
import 'package:z_money/features/transactions/data/transactions_label.dart';

TransactionsData addFunction({
  required String newAmount,
  required String description,
  required bool isAdd,
  required TransactionLabel? label,
  required DateTime date,
  required WidgetRef ref,
}) {
  final amount = ref.read(amountProvider);
  final amountNotifier = ref.read(amountProvider.notifier);
  amountNotifier.setAmount(
    amount + double.parse(newAmount.replaceAll(',', '')),
  );
  return TransactionsData(
    amount: double.parse(newAmount.replaceAll(',', '')),
    description: description,
    isAdd: isAdd,
    label: label,
    date: mainFormatter().format(date),
  );
}
