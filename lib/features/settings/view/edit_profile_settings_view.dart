import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:z_money/core/widgets/app_bar.dart';
import 'package:z_money/features/account/data/user_information_data.dart';
import 'package:z_money/features/settings/edit_profile/widget/alert_dialog/alert_dialog.dart';
import 'package:z_money/features/settings/edit_profile/widget/informations/the_edit_profile_setting.dart';

class EditProfileSettingsView extends ConsumerWidget {
  const EditProfileSettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInformation = ref.read(userDataProvider);
    return Scaffold(
      appBar: mainAppBar(context, 'Profile'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TheEditProfileSetting(
                userInformation: userInformation.name,
                theInformation: 'Name:',
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => showEditProfileDialog(context),
                ),
              ),
              Gap(16),
              TheEditProfileSetting(
                userInformation: userInformation.userName,
                theInformation: 'User Name:',
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => showEditProfileDialog(context),
                ),
              ),
              Gap(16),
              TheEditProfileSetting(
                userInformation: userInformation.userEmail,
                theInformation: 'Email:',
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => showEditProfileDialog(context),
                ),
              ),
              Gap(16),
              TheEditProfileSetting(
                userInformation: userInformation.phoneNumber,
                theInformation: 'Phone Number:',
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => showEditProfileDialog(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
