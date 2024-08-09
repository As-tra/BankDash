import 'package:bank_dashboard/widgets/balance_history.dart';
import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:bank_dashboard/widgets/expenses_statistics.dart';
import 'package:bank_dashboard/widgets/mobile_app_bar.dart';
import 'package:bank_dashboard/widgets/my_mobile_cards.dart';
import 'package:bank_dashboard/widgets/quick_transfer.dart';
import 'package:bank_dashboard/widgets/recent_transaction.dart';
import 'package:bank_dashboard/widgets/recent_transaction_list.dart';
import 'package:bank_dashboard/widgets/weekly_activities.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MobileAppBar(),
          const SizedBox(height: 22),
          const MyMobileCards(),
          const SizedBox(height: 19),
          // this I rebuild the widget because I have slight diffirence in the
          // widget spacing and layout
          _buildMobileRecentTransaction,
          const SizedBox(height: 22),
          mobileWrapper(const WeeklyActivities()),
          const SizedBox(height: 22),
          mobileWrapper(const ExpensesStatistics()),
          const SizedBox(height: 22),
          mobileWrapper(const QuickTransfer(), ratio: 1.2),
          const SizedBox(height: 22),
          mobileWrapper(const BalanceHistory(), ratio: 1.4),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Padding get _buildMobileRecentTransaction => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            CustomSectionHeader(text: 'Recent Transaction'),
            SizedBox(height: 12),
            RecentTransactionList(),
          ],
        ),
      );
}

Padding mobileWrapper(Widget child, {double ratio = 1}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: AspectRatio(
      aspectRatio: ratio,
      child: child,
    ),
  );
}
