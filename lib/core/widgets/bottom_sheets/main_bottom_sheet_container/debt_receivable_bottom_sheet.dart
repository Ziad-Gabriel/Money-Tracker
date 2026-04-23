import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:money_tracker/core/utils/date_formatter.dart';
import 'package:money_tracker/core/widgets/bottom_sheets/buttons/done_debt_receivable_button/done_debt_receivable_button.dart';
import 'package:money_tracker/core/widgets/choose_date/choose_date.dart';

import 'package:money_tracker/core/widgets/text_fields/amount_text_field.dart';
import 'package:money_tracker/core/widgets/text_fields/description_text_field.dart';
import 'package:money_tracker/core/widgets/bottom_sheets/buttons/cancel_button.dart';

class DebtReceivableBottomSheet extends StatefulWidget {
  final bool isDebt;
  const DebtReceivableBottomSheet({super.key, required this.isDebt});

  @override
  State<DebtReceivableBottomSheet> createState() =>
      _DebtReceivableBottomSheetState();
}

class _DebtReceivableBottomSheetState extends State<DebtReceivableBottomSheet> {
  final amountController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime initDate = DateTime.now(); //default initial date
  DateTime? endDate;

  @override
  void dispose() {
    amountController.dispose();
    descriptionController.dispose();
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
            DescriptionTextField(controller: descriptionController),
            Gap(MediaQuery.of(context).size.height * 0.02),
            AmountTextField(controller: amountController),
            Gap(MediaQuery.of(context).size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChooseDate(
                  selectedDate: initDate,
                  onDateSelected: (selectedDate) {
                    setState(() {
                      initDate = selectedDate;
                    });
                  },
                ),
                ChooseDate(
                  selectedDate: endDate,
                  onDateSelected: (selectedDate) {
                    setState(() {
                      endDate = selectedDate;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CancelButton(),
                DoneDebtReceivableButton(
                  isDebt: widget.isDebt,
                  amount: amountController,
                  name: descriptionController,
                  initDate: mainFormatter().format(initDate),
                  endDate: endDate == null
                      ? 'No specefic date'
                      : mainFormatter().format(endDate!),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
