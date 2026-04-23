import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:money_tracker/features/debt_receivables/widgets/debt/debt_list/debts_list.dart';
import 'package:money_tracker/features/debt_receivables/widgets/receivables/receivable_list/receivables_list.dart';
import 'package:money_tracker/features/debt_receivables/widgets/top_nav_bar/nav_container.dart';

class DebtsReceivablesView extends StatelessWidget {
  const DebtsReceivablesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> lists = [DebtsList(), ReceivablesList()];
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Divider(),
            TopNavBar(),
            Expanded(child: TabBarView(children: lists)),
            Divider(),
            Gap(MediaQuery.of(context).size.height * 0.15),
          ],
        ),
      ),
    );
  }
}
