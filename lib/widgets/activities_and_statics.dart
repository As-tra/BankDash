import 'package:bank_dashboard/widgets/expenses_statistics.dart';
import 'package:bank_dashboard/widgets/weekly_activities.dart';
import 'package:flutter/material.dart';

class ActivitiesAndStatics extends StatelessWidget {
  const ActivitiesAndStatics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: WeeklyActivities()),
        SizedBox(width: 30),
        Expanded(flex: 1, child: ExpensesStatistics()),
      ],
    );
  }
}
