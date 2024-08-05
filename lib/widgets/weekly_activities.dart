import 'package:bank_dashboard/widgets/custom_bar_chart.dart';
import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class WeeklyActivities extends StatelessWidget {
  const WeeklyActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(text: 'Weekly Activity'),
        SizedBox(height: 18),
        Expanded(child: CustomBarChart()),
      ],
    );
  }
}
