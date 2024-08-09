import 'package:bank_dashboard/widgets/activities_and_statics.dart';
import 'package:bank_dashboard/widgets/cards_and_transactions.dart';
import 'package:bank_dashboard/widgets/transfer_and_history.dart';
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
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CardsAndTransactions(),
            SizedBox(height: 24),
            ActivitiesAndStatics(),
            SizedBox(height: 24),
            TransferAndHistory(),
          ],
        ),
      ),
    );
  }
}
