import 'package:flutter/material.dart';
import 'package:money_tracker/core/widgets/list_item_theme/list_item_text.dart';

class ListItem extends StatelessWidget {
  final Color color;
  final Image image;
  final String date;
  final String description;
  final String amount;

  const ListItem({
    super.key,
    required this.color,
    required this.image,
    required this.date,
    required this.description,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Center(child: image),
        ),
        Expanded(child: ListItemText(text: date)),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 4),
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            width: 2,
          ),
        ),
        Expanded(child: ListItemText(text: description)),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 4),
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            width: 2,
          ),
        ),
        Expanded(child: ListItemText(text: amount)),
        SizedBox(
          width: 40,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline_rounded),
          ),
        ),
      ],
    );
  }
}
