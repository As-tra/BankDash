import 'package:bank_dashboard/widgets/cards_and_transactions.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        left: 40,
        right: 40,
        bottom: 40,
      ),
      child: const Column(
        children: [
          CardsAndTransactions(),
          SizedBox(height: 24),
          // ActivitiesAndStatics(),
          // SizedBox(height: 24),
          // TransferAndHistory(),
        ],
      ),
    );
  }
}