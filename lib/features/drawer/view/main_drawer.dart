import 'package:flutter/material.dart';
import 'package:money_tracker/features/debts/view/debt_view.dart';
import 'package:money_tracker/features/drawer/widget/button/button_drawer.dart';
import 'package:money_tracker/features/drawer/widget/user_accounts/current_account_drawer.dart';

Widget mainDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.surface,
    child: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            children: [
              buttonDrawer(context, 'Debts', DebtView()),
              SizedBox(height: 8),

              Divider(),

              SizedBox(height: 8),
              DrawerCurrentAccount(),
            ],
          ),
        ),
      ),
    ),
  );
}
