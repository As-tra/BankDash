import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/credit_card_model.dart';
import 'package:bank_dashboard/widgets/card_balance_section.dart';
import 'package:bank_dashboard/widgets/card_info_section.dart';
import 'package:bank_dashboard/widgets/card_number_section.dart';
import 'package:flutter/material.dart';

class ActiveCreditCardItem extends StatelessWidget {
  const ActiveCreditCardItem({super.key, required this.model});
  final CreditCardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kGradient,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardBalanceSection(
            isActive: true,
          ),
          CardInfoSection(
            isActive: true,
          ),
          CardNumberSection(
            isActive: true,
          ),
        ],
      ),
    );
  }
}

class InactiveCreditCardItem extends StatelessWidget {
  const InactiveCreditCardItem({super.key, required this.model});
  final CreditCardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color(0xffDFEAF2)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardBalanceSection(
            isActive: false,
          ),
          CardInfoSection(
            isActive: false,
          ),
          CardNumberSection(
            isActive: false,
          ),
        ],
      ),
    );
  }
}
