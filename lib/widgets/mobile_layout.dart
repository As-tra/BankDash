import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:bank_dashboard/widgets/mobile_app_bar.dart';
import 'package:bank_dashboard/widgets/my_mobile_cards.dart';
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
          _buildMobileRecentTransaction,
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: WeeklyActivities(),
            ),
          ),
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
