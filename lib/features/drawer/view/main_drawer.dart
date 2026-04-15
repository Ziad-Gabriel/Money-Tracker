import 'package:flutter/material.dart';
import 'package:z_money/features/currency_converter/view/currency_converter_view.dart';
import 'package:z_money/features/debts/view/debt_view.dart';
import 'package:z_money/features/drawer/widget/button/button_drawer.dart';
import 'package:z_money/features/drawer/widget/user_accounts/current_account_drawer.dart';
import 'package:z_money/features/golds_prices/view/golds_view.dart';

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
              buttonDrawer(context, 'Golds prices', GoldsView()),
              SizedBox(height: 8),
              buttonDrawer(context, 'Currency converter', CurrencyView()),
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
