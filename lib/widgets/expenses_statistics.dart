import 'package:bank_dashboard/widgets/custom_pie_chart.dart';
import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class ExpensesStatistics extends StatelessWidget {
  const ExpensesStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(text: 'Expense Statistics'),
        SizedBox(height: 18),
        Expanded(child: CustomPieChart()),
      ],
    );
  }
}

