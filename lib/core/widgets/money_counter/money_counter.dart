import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracker/core/utils/app_format_money/money_counter_formatter.dart';
import 'package:money_tracker/features/home/data/money_data.dart';

class MoneyCounter extends ConsumerStatefulWidget {
  final int currentPageIndex;
  const MoneyCounter({super.key, required this.currentPageIndex});

  @override
  ConsumerState<MoneyCounter> createState() => _MoneyCounterState();
}

class _MoneyCounterState extends ConsumerState<MoneyCounter> {
  @override
  Widget build(BuildContext context) {
    final amount = ref.watch(amountProvider);
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: widget.currentPageIndex == 1 ? 16 : 0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            width: widget.currentPageIndex == 1 ? 350 : 280,
            height: widget.currentPageIndex == 1 ? 110 : 80,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(124, 0, 0, 0),
                  blurRadius: 3,
                  offset: Offset(1.5, 1.5),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
              ),
              borderRadius: BorderRadius.vertical(
                bottom: const Radius.circular(10),
                top: widget.currentPageIndex == 1
                    ? Radius.circular(10)
                    : Radius.circular(0),
              ),
            ),
            child: Center(
              child: Text(
                formatMoney(amount),
                style: GoogleFonts.viga(
                  fontSize: widget.currentPageIndex == 1 ? 26 : 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
