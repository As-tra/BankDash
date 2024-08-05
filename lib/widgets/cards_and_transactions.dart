import 'package:bank_dashboard/widgets/my_cards.dart';
import 'package:bank_dashboard/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';

class CardsAndTransactions extends StatelessWidget {
  const CardsAndTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 4.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: MyCards()),
          SizedBox(width: 30),
          Expanded(flex: 1, child: RecentTransaction()),
        ],
      ),
    );
  }
}
