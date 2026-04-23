import 'package:flutter/material.dart';
import 'package:money_tracker/core/widgets/list_item_theme/list_item.dart';

class ListsItemContainer extends StatelessWidget {
  
  final Color color;
  final Image image;
  final String date;
  final String description;
  final String amount;

  const ListsItemContainer({super.key,required this.color,required this.image,required this.date,required this.description, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListItem(color: color,image: image,date: date,description: description,amount: amount),
      ),
    );
  }
}