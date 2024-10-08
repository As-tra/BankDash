import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/credit_cards_row.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Cards',
              style: Styles.interSemiBold22(context),
            ),
            Text(
              'See All',
              style: Styles.interSemiBold17(context),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Expanded(child: CreditCardsRow())
      ],
    );
  }
}
