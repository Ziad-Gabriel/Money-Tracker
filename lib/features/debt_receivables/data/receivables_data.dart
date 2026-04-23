import 'package:flutter_riverpod/legacy.dart';

class ReceivablesData {
  final String name;
  final double amount;
  final String beginDate;
  final String endDate;

  const ReceivablesData({
    required this.name,
    required this.amount,
    required this.beginDate,
    required this.endDate,
  });
}

final StateNotifierProvider<ReceivablesDataNotifier, List<ReceivablesData>> receivablesDataProvider =
    StateNotifierProvider<ReceivablesDataNotifier, List<ReceivablesData>>(
  (ref) => ReceivablesDataNotifier(),
);

class ReceivablesDataNotifier extends StateNotifier<List<ReceivablesData>> {
  ReceivablesDataNotifier() : super([ReceivablesData(
          name: 'receivables 1',
          amount: 12,
          beginDate: '2026-02-01',
          endDate: '2026-06-03',
        ),
        ReceivablesData(
          name: 'receivables 2',
          amount: 200,
          beginDate: '2026-02-01',
          endDate: '2026-06-03',
        ),
        ReceivablesData(
          name: 'receivables 3',
          amount: 150,
          beginDate: '2026-02-01',
          endDate: '2026-06-03',
        ),]);

  void addReceivable(ReceivablesData data) {
    state = [...state, data];
  }
}