import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:z_money/core/widgets/app_bar.dart';
import 'package:z_money/core/widgets/app_navigationbar.dart';
import 'package:z_money/features/account/data/user_information_data.dart';
import 'package:z_money/features/account/view/account_view.dart';
import 'package:z_money/features/drawer/view/main_drawer.dart';
import 'package:z_money/features/home/view/home_view.dart';
import 'package:z_money/features/transactions/view/transactions_view.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<MainView> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  int currentIndex = 1; // Default to HomeView index

  final List<Widget> pages = [
    const AccountView(),
    const HomeView(),
    const TransactionsView(),
  ];

  @override
  Widget build(BuildContext context) {
    final userName = ref.read(userDataProvider).name;
    return Builder(
      builder: (context) => Scaffold(
        appBar: mainAppBar(context, userName),
        drawer: mainDrawer(context),
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: pages,
        ),

        bottomNavigationBar: MainNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            controller.animateToPage(
              index,
              duration: Duration(
                milliseconds:
                    (currentIndex == 0 && index == 2) ||
                        (currentIndex == 2 && index == 0)
                    ? 350
                    : 250,
              ),
              curve: Curves.easeInOut,
            );
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
