import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoneDebtReceivableButton extends ConsumerWidget {
  final bool isDebt;
  final TextEditingController amount;
  final TextEditingController name;
  final String initDate;
  final String endDate;

  const DoneDebtReceivableButton({
    super.key,
    required this.isDebt,
    required this.amount,
    required this.name,
    required this.initDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        fixedSize: Size(50, 80),
      ),
      child: Text('Done'),
      onPressed: () {},
    );
  }
}
