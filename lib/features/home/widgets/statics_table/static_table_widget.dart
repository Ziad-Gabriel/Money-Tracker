import 'package:flutter/material.dart';

import 'package:z_money/core/constants/app_sized.dart';

class StaticTableWidget extends StatefulWidget {
  const StaticTableWidget({super.key});

  @override
  State<StaticTableWidget> createState() => _StaticTableWidgetState();
}

class _StaticTableWidgetState extends State<StaticTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: staticChartHeight(context),
        width: staticChartWidth(context),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
