bool amountValidator({required String controller}) {
  final text = controller.replaceAll(',', '');
  try {
    final amount = double.parse(text);
    return amount > 0;
  } catch (e) {
    return false;
  }
}
