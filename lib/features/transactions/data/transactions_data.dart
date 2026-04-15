import 'package:flutter_riverpod/legacy.dart';
import 'package:z_money/features/transactions/data/transactions_label.dart';

class TransactionsData {
  double amount;
  String description;
  bool isAdd;
  String date;
  TransactionLabel? label;
  TransactionsData({
    required this.amount,
    required this.description,
    required this.date,
    required this.label,
    required this.isAdd,
  });
}

final StateNotifierProvider<TransactionDataNotifier, List<TransactionsData>>
transactionProvider =
    StateNotifierProvider<TransactionDataNotifier, List<TransactionsData>>(
      (ref) => TransactionDataNotifier(),
    );

class TransactionDataNotifier extends StateNotifier<List<TransactionsData>> {
  TransactionDataNotifier()
    : super([
        TransactionsData(
          amount: 1000,
          description: "The day we talk",
          date: "2026-01-09",
          label: LabelNotifier().getLabelTransaction[0],
          isAdd: true,
        ),
        TransactionsData(
          amount: 50,
          description: "Reem",
          date: "2007-10-31",
          label: LabelNotifier().getLabelTransaction[1],
          isAdd: false,
        ),
        TransactionsData(
          amount: 200,
          description: "Ziad",
          date: "2006-05-04",
          label: LabelNotifier().getLabelTransaction[2],
          isAdd: false,
        ),
      ]);

  List<TransactionsData> getTransactionOfLabel(TransactionLabel label) {
    return state;
  }

  void addTransaction(TransactionsData transaction) {
    state = [transaction, ...state];
  }
}
