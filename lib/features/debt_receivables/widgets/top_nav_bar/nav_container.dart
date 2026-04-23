import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({super.key});

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 4,
      tabs: [
        Tab(text: 'Debts'),
        Tab(text: 'Receivables'),
      ],
    );
  }
}
