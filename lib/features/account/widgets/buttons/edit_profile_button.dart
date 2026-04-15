import 'package:flutter/material.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';
import 'package:z_money/core/utils/navigate_to.dart';
import 'package:z_money/features/settings/edit_profile/view/edit_profile_settings_view.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(20, 0, 0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () => navigateTo(context, EditProfileSettingsView()),
      child: Text('Edit Profile', style: mainText(context)),
    );
  }
}
