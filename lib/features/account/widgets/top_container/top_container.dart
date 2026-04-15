import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:money_tracker/features/account/widgets/buttons/edit_profile_button.dart';
import 'package:money_tracker/features/account/widgets/top_container/profile_image.dart';
import 'package:money_tracker/features/account/widgets/top_container/user_information.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(),
          Gap(16),
          UserInformation(),
          Gap(16),
          EditProfileButton(),
        ],
      ),
    );
  }
}
