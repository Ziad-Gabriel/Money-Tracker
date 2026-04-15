import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/features/account/data/user_information_data.dart';

class UserInformation extends ConsumerWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInformation = ref.read(userDataProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Name: ${userInformation.name}'),
          Text('User name: ${userInformation.userName}'),
          Text('Email: ${userInformation.userEmail}'),
          Text('Phone: ${userInformation.phoneNumber}'),
        ],
      ),
    );
  }
}
