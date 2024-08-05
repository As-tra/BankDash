import 'package:bank_dashboard/models/credit_card_model.dart';
import 'package:bank_dashboard/widgets/active_and_inactive_credit_card_item.dart';
import 'package:flutter/material.dart';

class CreditCardItem extends StatelessWidget {
  const CreditCardItem(
      {super.key, required this.isActive, required this.creditCardModel});
  final bool isActive;
  final CreditCardModel creditCardModel;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCreditCardItem(model: creditCardModel)
        : InactiveCreditCardItem(model: creditCardModel);
  }
}
