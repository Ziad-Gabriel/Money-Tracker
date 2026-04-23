import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_tracker/core/widgets/app_bars/app_bar.dart';

import 'package:money_tracker/core/widgets/main_floating_button.dart';
import 'package:money_tracker/core/widgets/app_bars/app_navigationbar.dart';
import 'package:money_tracker/features/debt_receivables/view/debts_receivables_view.dart';
import 'package:money_tracker/features/home/view/home_view.dart';
import 'package:money_tracker/core/widgets/money_counter/money_counter.dart';
import 'package:money_tracker/features/transactions/view/transactions_view.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<MainView> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  late PageController controller;
  bool _isManualSelection = false;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  int currentIndex = 1; // Default to HomeView index

  // list of main pages to navigate through
  final List<Widget> pages = [
    const TransactionsView(),
    const HomeView(),
    const DebtsReceivablesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        appBar: mainAppBar(context),
        body: Column(
          children: [
            MoneyCounter(currentPageIndex: currentIndex,),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  if (!_isManualSelection) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
                },
                children: pages,
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: MainFloatingButton(),
        extendBody: true,
        bottomNavigationBar: MainNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) async {
            if (index == currentIndex) return;

            setState(() {
              _isManualSelection = true;
              currentIndex = index;
            });

            await controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
            );

            _isManualSelection = false;
          },
        ),
      ),
    );
  }
}
