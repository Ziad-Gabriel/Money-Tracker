import 'package:flutter_riverpod/legacy.dart';

final StateNotifierProvider<AmountNotifier, double> amountProvider =
    StateNotifierProvider<AmountNotifier, double>((ref) => AmountNotifier());

class AmountNotifier extends StateNotifier<double> {
  AmountNotifier() : super(0);

  void setAmount(double newAmount) {
    state = newAmount;
  }
}
