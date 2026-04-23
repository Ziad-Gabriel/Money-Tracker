import 'package:flutter/material.dart';
import 'package:money_tracker/core/utils/date_formatter.dart';
import 'package:money_tracker/core/utils/date_picker.dart';

class ChooseDate extends StatefulWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const ChooseDate({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  State<ChooseDate> createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
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
        fixedSize: Size(160, 80),
      ),
      onPressed: () async {
        final pickedDate = await showCustomDatePicker(context);
        if (pickedDate != null) {
          widget.onDateSelected(pickedDate);
        }
      },
      label: Text(
        widget.selectedDate == null
            ? mainFormatter().format(DateTime.now())
            : mainFormatter().format(widget.selectedDate!),
      ),
      icon: Icon(
        Icons.calendar_month_outlined,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
