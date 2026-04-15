import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:z_money/features/home/widgets/buttons/cancel_button.dart';
import 'package:z_money/features/home/widgets/buttons/choose_label.dart';
import 'package:z_money/features/home/widgets/buttons/done_button/done_button.dart';
import 'package:z_money/features/home/widgets/buttons/choose_date.dart';
import 'package:z_money/features/home/widgets/text_fields/amount_text_field.dart';
import 'package:z_money/features/home/widgets/text_fields/description_text_field.dart';
import 'package:z_money/features/transactions/data/transactions_label.dart';

class AddAndWithdrawBottomSheet extends ConsumerStatefulWidget {
  final bool isAdd;

  const AddAndWithdrawBottomSheet({super.key, required this.isAdd});

  @override
  ConsumerState<AddAndWithdrawBottomSheet> createState() =>
      _AddAndWithdrawBottomSheetState();
}

class _AddAndWithdrawBottomSheetState
    extends ConsumerState<AddAndWithdrawBottomSheet> {
  final amountcontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();
  DateTime date = DateTime.now(); // Default to current date
  final TransactionLabel? selectedLabel = null;

  @override
  void dispose() {
    amountcontroller.dispose();
    descriptioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AmountTextField(controller: amountcontroller),
            Gap(MediaQuery.of(context).size.height * 0.02),
            DescriptionTextField(controller: descriptioncontroller),
            Gap(MediaQuery.of(context).size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChooseLabel(),
                ChooseDate(
                  selectedDate: date,
                  onDateSelected: (selectedDate) {
                    setState(() {
                      date = selectedDate;
                    });
                  },
                ),
              ],
            ),
            Gap(MediaQuery.of(context).size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CancelButton(),
                DoneButton(
                  isAdd: widget.isAdd,
                  amount: amountcontroller,
                  description: descriptioncontroller,
                  date: date,
                  label: selectedLabel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
