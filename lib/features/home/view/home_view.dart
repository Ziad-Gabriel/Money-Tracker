import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:money_tracker/features/home/widgets/buttons/add_button.dart';
import 'package:money_tracker/features/home/widgets/buttons/withdraw_button.dart';
import 'package:money_tracker/features/home/widgets/debt/home_debt.dart';
import 'package:money_tracker/features/home/widgets/money_counter/money_counter.dart';

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
                  HomeDebt(),
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
