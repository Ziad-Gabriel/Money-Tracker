import 'package:flutter/material.dart';
import 'package:money_tracker/core/widgets/app_bar.dart';

class DebtView extends StatelessWidget {
  const DebtView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, 'Debts'),
      body: Center(child: Text('Debt View')),
    );
  }
}
