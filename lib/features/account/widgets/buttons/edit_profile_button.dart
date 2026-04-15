import 'package:flutter/material.dart';
import 'package:money_tracker/core/utils/navigate_to.dart';
import 'package:money_tracker/features/settings/view/edit_profile_settings_view.dart';

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
      child: Text('Edit Profile'),
    );
  }
}
