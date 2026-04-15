import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:z_money/core/constants/app_text_styles/buttons_text_style.dart';
import 'package:z_money/core/validation/amount_validator.dart';
import 'package:z_money/core/validation/description_validator.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/functions/Invalid/amount_descripe_invalid.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/functions/Invalid/amount_invalid.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/functions/Invalid/descripe_invalid.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/functions/valid/add.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/functions/valid/withdraw.dart';
import 'package:z_money/features/transactions/data/transactions_data.dart';
import 'package:z_money/features/transactions/data/transactions_label.dart';

class DoneButton extends ConsumerWidget {
  final bool isAdd;
  final TextEditingController amount;
  final TextEditingController description;
  final DateTime date;
  final TransactionLabel? label;

  const DoneButton({
    super.key,
    required this.isAdd,
    required this.amount,
    required this.description,
    required this.date,
    required this.label,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addtransaction = ref.read(transactionProvider.notifier);
    return ElevatedButton(
      onPressed: () {
        final amountText = amount.text;
        final descriptionText = description.text;
        if (!amountValidator(controller: amountText) &&
            !descriptionValidator(controller: descriptionText)) {
          showInvalidAmountDiscripeDialog(context);
        } else if (!amountValidator(controller: amountText)) {
          showInvalidAmountDialog(context);
        } else if (!descriptionValidator(controller: descriptionText)) {
          showInvalidDescripeDialog(context);
        } else {
          final date = this.date;
          if (isAdd) {
            addtransaction.addTransaction(
              addFunction(
                newAmount: amountText,
                description: descriptionText,
                isAdd: isAdd,
                label: label,
                date: date,
                ref: ref,
              ),
            );
          } else {
            addtransaction.addTransaction(
              withdrawFunction(
                newAmount: amountText,
                description: descriptionText,
                isAdd: isAdd,
                label: label,
                date: date,
                ref: ref,
              ),
            );
          }
          Navigator.pop(context);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text("Done", style: buttonsText(context)),
    );
  }
}
