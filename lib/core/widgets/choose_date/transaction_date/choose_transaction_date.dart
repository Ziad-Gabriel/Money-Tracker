import 'package:flutter/material.dart';
import 'package:money_tracker/core/utils/date_formatter.dart';
import 'package:money_tracker/core/utils/date_picker.dart';

class ChooseTransactionDate extends StatefulWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const ChooseTransactionDate({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  State<ChooseTransactionDate> createState() => _ChooseTransactionDateState();
}

class _ChooseTransactionDateState extends State<ChooseTransactionDate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 4,

        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(200),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: Size(180, 100),
      ),
      onPressed: () async {
        final pickedDate = await showCustomDatePicker(context);
        if (pickedDate != null) {
          widget.onDateSelected(pickedDate);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'transaction date',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Icon(
              Icons.calendar_month_outlined,
              color: Theme.of(context).colorScheme.onSurface,
              size: 36,
            ),
            Text(
              widget.selectedDate == null
                  ? mainFormatter().format(DateTime.now())
                  : mainFormatter().format(widget.selectedDate!),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
