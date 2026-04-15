import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:money_tracker/core/widgets/littel_money_counter.dart';
import 'package:money_tracker/features/account/widgets/buttons/theme_switcher.dart';
import 'package:money_tracker/features/account/widgets/top_container/top_container.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Column(
        children: [
          LittelMoneyCounter(),
          Divider(),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [TopContainer(), Gap(16), ThemeSwitcher()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
