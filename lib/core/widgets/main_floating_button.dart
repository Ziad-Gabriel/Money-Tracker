// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:money_tracker/core/constants/app_bottom_sheet.dart';
import 'package:money_tracker/core/widgets/bottom_sheets/main_bottom_sheet_container/add_withdraw_bottom_sheet.dart';
import 'package:money_tracker/core/widgets/bottom_sheets/main_bottom_sheet_container/debt_receivable_bottom_sheet.dart';

class MainFloatingButton extends StatelessWidget {
  const MainFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      elevation: 6,
      icon: Icons.wallet_rounded,
      activeIcon: Icons.close_rounded,
      children: [
        SpeedDialChild(
          label: 'Add money',
          child: Icon(
            Icons.add_circle_rounded,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () => mainBottomSheet(
            context,
            myBottomSheet: AddAndWithdrawBottomSheet(isAdd: true),
          ),
        ),
        SpeedDialChild(
          label: 'Withdraw money',
          child: Icon(
            Icons.remove_circle_rounded,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () => mainBottomSheet(
            context,
            myBottomSheet: AddAndWithdrawBottomSheet(isAdd: false),
          ),
        ),
        SpeedDialChild(
          label: 'Add debt',
          child: Image.asset(
            'assets/image/wallet_withdraw_white.png',
            height: 36,
            width: 36,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () => mainBottomSheet(
            context,
            myBottomSheet: DebtReceivableBottomSheet(isDebt: true),
          ),
        ),
        SpeedDialChild(
          label: 'Add receivable',
          child: Image.asset(
            'assets/image/wallet_add_white.png',
            height: 36,
            width: 36,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onTap: () => mainBottomSheet(
            context,
            myBottomSheet: DebtReceivableBottomSheet(isDebt: false),
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(235),
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
    );
  }
}
