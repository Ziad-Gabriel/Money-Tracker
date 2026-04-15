import 'package:flutter_riverpod/legacy.dart';

class TransactionsData {
  double amount;
  String description;
  bool isAdd;
  String date;

  TransactionsData({
    required this.amount,
    required this.description,
    required this.date,
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

          isAdd: true,
        ),
        TransactionsData(
          amount: 50,
          description: "Reem",
          date: "2007-10-31",

          isAdd: false,
        ),
        TransactionsData(
          amount: 200,
          description: "Ziad",
          date: "2006-05-04",

          isAdd: false,
        ),
      ]);

  void addTransaction(TransactionsData transaction) {
    state = [transaction, ...state];
  }
}
