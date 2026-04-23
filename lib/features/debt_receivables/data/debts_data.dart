import 'package:flutter_riverpod/legacy.dart';

class DebtsData {
  final String name;
  final double amount;
  final String beginDate;
  final String endDate;

  const DebtsData({
    required this.name,
    required this.amount,
    required this.beginDate,
    required this.endDate,
  });
}

final StateNotifierProvider<DebtsDataNotifier, List<DebtsData>>
debtsDataProvider = StateNotifierProvider<DebtsDataNotifier, List<DebtsData>>(
  (ref) => DebtsDataNotifier(),
);

class DebtsDataNotifier extends StateNotifier<List<DebtsData>> {
  DebtsDataNotifier()
    : super([
        // DebtsData(
        //   title: 'debt 1',
        //   amount: 12,
        //   beginDate: '2026-02-01',
        //   endDate: '2026-06-03',
        // ),
        // DebtsData(
        //   title: 'debt 2',
        //   amount: 200,
        //   beginDate: '2026-02-01',
        //   endDate: '2026-06-03',
        // ),
        // DebtsData(
        //   title: 'debt 3',
        //   amount: 150,
        //   beginDate: '2026-02-01',
        //   endDate: '2026-06-03',
        // ),
      ]);

  void addDebt(DebtsData data) {
    state = [...state, data];
  }
}
