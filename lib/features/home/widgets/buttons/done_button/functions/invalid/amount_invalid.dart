import 'package:flutter/material.dart';

import 'package:money_tracker/features/home/widgets/alert_dialog/alert_dialog.dart';

/// When the user enters invalid amount
Future showInvalidAmountDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (dialogCtx) => showAlertDialog(dialogCtx, "Invalid amount"),
  );
}
