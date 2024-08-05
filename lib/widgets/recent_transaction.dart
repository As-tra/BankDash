import 'package:bank_dashboard/widgets/custom_card_container.dart';
import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:bank_dashboard/widgets/recent_transaction_list.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(text: 'Recent Transaction'),
        SizedBox(height: 20),
        Expanded(
          child: CustomCardContainer(
            child: RecentTransactionList(),
          ),
        ),
      ],
    );
  }
}
