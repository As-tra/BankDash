import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/custom_card_container.dart';
import 'package:bank_dashboard/widgets/recent_transaction_list.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Transaction',
          style: Styles.interSemiBold22(context),
        ),
        const SizedBox(height: 20),
        const CustomCardContainer(
          child: RecentTransactionList(),
        ),
      ],
    );
  }
}
