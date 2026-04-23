import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:money_tracker/core/widgets/bottom_sheets/buttons/cancel_button.dart';
import 'package:money_tracker/core/widgets/choose_date/choose_date.dart';
import 'package:money_tracker/core/widgets/bottom_sheets/buttons/done_add_withdraw_button/done_add_withdraw_button.dart';
import 'package:money_tracker/core/widgets/text_fields/amount_text_field.dart';
import 'package:money_tracker/core/widgets/text_fields/description_text_field.dart';

class AddAndWithdrawBottomSheet extends StatefulWidget {
  final bool isAdd;

  const AddAndWithdrawBottomSheet({super.key, required this.isAdd});

  @override
  State<AddAndWithdrawBottomSheet> createState() =>
      _AddAndWithdrawBottomSheetState();
}

class _AddAndWithdrawBottomSheetState
    extends State<AddAndWithdrawBottomSheet> {
  final amountcontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();
  DateTime date = DateTime.now(); // Default to current date

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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
