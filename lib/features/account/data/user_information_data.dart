import 'package:flutter_riverpod/legacy.dart';

class UserInformationData {
  String name;
  String userName;
  String userEmail;
  String phoneNumber;

  UserInformationData({
    required this.name,
    required this.userName,
    required this.userEmail,
    required this.phoneNumber,
  });
}

final StateNotifierProvider<UserDataNotifier, UserInformationData>
userDataProvider = StateNotifierProvider<UserDataNotifier, UserInformationData>(
  (ref) => UserDataNotifier(),
);

class UserDataNotifier extends StateNotifier<UserInformationData> {
  UserDataNotifier()
    : super(
        UserInformationData(
          name: 'Ziad Yahia',
          userName: 'ziad_gabriel',
          userEmail: 'ziad.yahia@example.com',
          phoneNumber: '01#########',
        ),
      );

  set changeName(String newName) {
    state.name = newName;
  }

  set changeUserName(String newUserName) {
    state.userName = newUserName;
  }

  set changeEmail(String newEmail) {
    state.userEmail = newEmail;
  }

  set phoneNumber(String newPhoneNumber) {
    state.phoneNumber = newPhoneNumber;
  }
}
