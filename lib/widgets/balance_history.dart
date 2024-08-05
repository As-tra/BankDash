import 'package:bank_dashboard/widgets/custom_line_chart.dart';
import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionHeader(text: 'Balance History'),
        SizedBox(height: 20),
        Expanded(
          child: CustomLineChart(),
        )
      ],
    );
  }
}
