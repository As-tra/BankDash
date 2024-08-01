import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/pie_chart_section_model.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  static List<PieChartSectionModel> sections = const [
    PieChartSectionModel(
        title: 'Entertainment', percentage: 30, color: Color(0xff343C6A)),
    PieChartSectionModel(
        title: 'Investment', percentage: 20, color: Color(0xffFA00FF)),
    PieChartSectionModel(
        title: 'Others', percentage: 35, color: Color(0xff1814F3)),
    PieChartSectionModel(
        title: 'Bill Expense', percentage: 15, color: Color(0xffFC7900)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      decoration: BoxDecoration(
          color: kSurface, borderRadius: BorderRadius.circular(25)),
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          _getPieChartData(),
          swapAnimationDuration: const Duration(milliseconds: 400),
          swapAnimationCurve: Curves.linear,
        ),
      ),
    );
  }

  PieChartData _getPieChartData() {
    return PieChartData(
      sections: sections.map((ele) {
        return PieChartSectionData(
            color: ele.color,
            value: ele.percentage,
            title: "${ele.percentage}%\\n${ele.title}",
            );
      }).toList(),
    );
  }
}
