import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:z_money/features/home/widgets/Buttons/add_button.dart';
import 'package:z_money/features/home/widgets/currency_convertor/home_currency_convertor.dart';
import 'package:z_money/features/home/widgets/debt/home_debt.dart';
import 'package:z_money/features/home/widgets/gold_prices/gold_prices.dart';
import 'package:z_money/features/home/widgets/Buttons/withdraw_button.dart';
import 'package:z_money/features/home/widgets/money_counter/money_counter.dart';
import 'package:z_money/features/home/widgets/statics_table/static_table_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          MoneyCounter(),
          Gap(16),

          // Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StaticTableWidget(),
                  Gap(16),
                  HomeDebt(),
                  Gap(16),
                  HomeGoldPrices(),
                  Gap(16),
                  HomeCurrencyConvertor(),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const WithdrawMoneyButton(),
                      const AddMoneyButton(),
                    ],
                  ),
                  Gap(16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
