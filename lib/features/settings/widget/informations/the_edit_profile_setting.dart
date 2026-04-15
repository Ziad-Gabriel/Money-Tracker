import 'package:flutter/material.dart';

class TheEditProfileSetting extends StatelessWidget {
  final Function onTap;
  final String theInformation;
  final String userInformation;
  const TheEditProfileSetting({
    super.key,
    required this.onTap,
    required this.theInformation,
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(theInformation), Text(userInformation)],
            ),
            IconButton(
              onPressed: () => onTap(),
              icon: Icon(Icons.edit_outlined),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
