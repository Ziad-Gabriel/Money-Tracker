import 'package:intl/intl.dart';

String formatMoney(double amount) {
  final NumberFormat formatter;
  if (amount % 1 == 0) {
    formatter = NumberFormat('#,##0');
    return formatter.format(amount);
  } else {
    formatter = NumberFormat('#,##0.00');
    return formatter.format(amount);
  }
}
