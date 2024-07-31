import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/widgets/card_balance_section.dart';
import 'package:bank_dashboard/widgets/card_info_section.dart';
import 'package:bank_dashboard/widgets/card_number_section.dart';
import 'package:flutter/material.dart';

class InactiveCreditCardItem extends StatelessWidget {
  const InactiveCreditCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const AspectRatio(
        aspectRatio: 290 / 172,
        child: Column(
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
      ),
    );
  }
}
