import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/utils/date_formatter.dart';
import 'package:money_tracker/features/home/data/money_data.dart';

import 'package:money_tracker/features/transactions/data/transactions_data.dart';

TransactionsData addFunction({
  required String newAmount,
  required String description,
  required bool isAdd,
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
    date: mainFormatter().format(date),
  );
}
