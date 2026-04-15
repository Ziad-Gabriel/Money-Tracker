import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_bottom_sheet.dart';
import 'package:z_money/core/constants/app_sized.dart';
import 'package:z_money/features/home/widgets/bottom_sheets/container_bottom_sheet.dart';

class WithdrawMoneyButton extends StatelessWidget {
  const WithdrawMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        mainBottomSheet(
          context,
          myBottomSheet: AddAndWithdrawBottomSheet(isAdd: false),
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
            Icons.remove_outlined,
            color: Theme.of(context).colorScheme.error,
            size: 44,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
