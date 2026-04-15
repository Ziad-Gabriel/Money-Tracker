import 'package:flutter/material.dart';

/// Typing transaction description
class DescriptionTextField extends StatefulWidget {
  final TextEditingController controller;

  const DescriptionTextField({super.key, required this.controller});

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
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
      keyboardType: TextInputType.text,
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      decoration: InputDecoration(
        labelText: "Enter description",
        // labelStyle:,
        suffixIcon: widget.controller.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                onPressed: () => widget.controller.clear(),
                icon: Icon(Icons.clear),
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
