import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:z_money/core/constants/app_text_styles/main_text_style.dart';
import 'package:z_money/core/utils/app_format_money/amount_textfield_formatter.dart';

/// Typing transaction amount
class AmountTextField extends StatefulWidget {
  final TextEditingController controller;

  const AmountTextField({super.key, required this.controller});

  @override
  State<AmountTextField> createState() => _AmountTextFieldState();
}

class _AmountTextFieldState extends State<AmountTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.done,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
        AmountTextFieldFormatter(),
      ],
      controller: widget.controller,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      decoration: InputDecoration(
        labelText: "Enter amount",
        labelStyle: mainText(context),
        suffixIcon: widget.controller.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                onPressed: () => widget.controller.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
      ),
    );
  }
}
