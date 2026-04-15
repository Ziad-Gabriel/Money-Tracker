// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:money_tracker/core/constants/app_bottom_sheet.dart';
import 'package:money_tracker/core/constants/app_sized.dart';
import 'package:money_tracker/features/home/widgets/bottom_sheets/container_bottom_sheet.dart';

class AddMoneyButton extends StatelessWidget {
  const AddMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        mainBottomSheet(
          context,
          myBottomSheet: AddAndWithdrawBottomSheet(isAdd: true),
        );
      },
      child: Card(
        elevation: 8,
        child: Container(
          width: buttonSize(context),
          height: buttonSize(context),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,

            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
            size: 44,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
