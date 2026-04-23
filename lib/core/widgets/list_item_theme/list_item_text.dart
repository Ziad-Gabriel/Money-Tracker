import 'package:flutter/material.dart';

class ListItemText extends StatelessWidget {
  final String text;
  const ListItemText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(text, maxLines: 1),
        ),
      ),
    );
  }
}
