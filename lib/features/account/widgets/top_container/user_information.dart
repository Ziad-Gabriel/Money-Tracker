import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:z_money/features/account/data/user_information_data.dart';

class UserInformation extends ConsumerWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInformation = ref.read(userDataProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Name: ${userInformation.name}',
            style: GoogleFonts.viga(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            'User name: ${userInformation.userName}',
            style: GoogleFonts.viga(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            'Email: ${userInformation.userEmail}',
            style: GoogleFonts.viga(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            'Phone: ${userInformation.phoneNumber}',
            style: GoogleFonts.viga(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
