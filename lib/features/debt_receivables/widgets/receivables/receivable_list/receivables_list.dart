import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/utils/app_format_money/money_counter_formatter.dart';

import 'package:money_tracker/core/widgets/list_item_theme/lists_item_container.dart';
import 'package:money_tracker/features/debt_receivables/data/receivables_data.dart';

class ReceivablesList extends ConsumerWidget {
  const ReceivablesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receivablesList = ref.watch(receivablesDataProvider);
    return receivablesList.isEmpty
        ? Center(child: Text("Didn't have any receivables"))
        :  ListView.builder(
      itemCount: receivablesList.length,
      itemBuilder: (context, index) => ListsItemContainer(
        color: Theme.of(context).colorScheme.primary,
        image: Image.asset('assets/image/wallet_add_white.png'),
        date: receivablesList[index].endDate,
              description: receivablesList[index].name,
              amount: formatMoney(receivablesList[index].amount),
      ),
    );
  }
}
