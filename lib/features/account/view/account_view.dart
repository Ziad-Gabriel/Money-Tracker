import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:z_money/core/utils/navigate_to.dart';
import 'package:z_money/core/widgets/littel_money_counter.dart';
import 'package:z_money/features/account/widgets/buttons/account_buttons.dart';
import 'package:z_money/features/account/widgets/buttons/theme_switcher.dart';
import 'package:z_money/features/account/widgets/top_container/top_container.dart';
import 'package:z_money/features/settings/notification/view/notification_settings_view.dart';
import 'package:z_money/features/settings/privacy/view/privacy_settings_view.dart';
import 'package:z_money/features/settings/static_table/view/static_table_settings_view.dart';
import 'package:z_money/features/settings/storage_and_data/view/data_settings_view.dart';

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
                  children: [
                    TopContainer(),
                    Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ThemeSwitcher(),
                        SettingsButton(
                          buttonTitle: 'Statics Table',
                          onPressed: () =>
                              navigateTo(context, StaticTableSettingsView()),
                        ),
                      ],
                    ),
                    Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SettingsButton(
                          buttonTitle: 'Language',
                          onPressed: () =>
                              navigateTo(context, StaticTableSettingsView()),
                        ),
                        SettingsButton(
                          buttonTitle: 'Storage and data',
                          onPressed: () =>
                              navigateTo(context, DataSettingsView()),
                        ),
                      ],
                    ),
                    Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SettingsButton(
                          buttonTitle: 'Notifications',
                          onPressed: () =>
                              navigateTo(context, NotificationSettingsView()),
                        ),
                        SettingsButton(
                          buttonTitle: 'Privacy',
                          onPressed: () =>
                              navigateTo(context, PrivacySettingsView()),
                        ),
                      ],
                    ),
                    Gap(16),
                    SettingsButton(
                      buttonTitle: 'Log out',
                      onPressed: () =>
                          navigateTo(context, StaticTableSettingsView()),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
