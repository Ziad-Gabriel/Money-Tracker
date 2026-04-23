import 'package:flutter/material.dart';

import 'package:money_tracker/core/widgets/alert_dialog/alert_dialog.dart';

/// When the user enters invalid amount and description
Future showInvalidAmountDiscripeDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (dialogCtx) =>
        showAlertDialog(dialogCtx, "Invalid amount and description"),
  );
}
