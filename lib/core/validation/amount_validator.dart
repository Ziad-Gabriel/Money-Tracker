bool amountValidator({required String controller,required bool isAdd,required double userAmount}) {
  final text = controller.replaceAll(',', '');
  try {
    final amount = double.parse(text);
    return isAdd? (amount > 0):(amount>0&&userAmount-amount>=0);
  } catch (e) {
    return false;
  }
}
