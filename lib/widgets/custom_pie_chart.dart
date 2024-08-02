import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/pie_chart_section_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  static List<PieChartSectionModel> sections = const [
    PieChartSectionModel(
        title: 'Entertainment', percentage: 30, color: Color(0xff343C6A)),
    PieChartSectionModel(
        title: 'Bill Expense', percentage: 15, color: Color(0xffFC7900)),
    PieChartSectionModel(
        title: 'Others', percentage: 35, color: Color(0xff1814F3)),
    PieChartSectionModel(
        title: 'Investment', percentage: 20, color: Color(0xffFA00FF)),
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
      centerSpaceRadius: 0,
      sectionsSpace: 8.5,
      startDegreeOffset: 180,
      borderData: FlBorderData(
        show: false,
      ),
      sections: sections.asMap().entries.map((ele) {
        return PieChartSectionData(
            radius: getRadius(ele.key),
            color: ele.value.color,
            value: ele.value.percentage,
            title: "${ele.value.percentage}% \n${ele.value.title}",
            titleStyle: const TextStyle(
              fontFamily: kInter,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ));
      }).toList(),
    );
  }

  double getRadius(int value) {
    switch (value) {
      case 0:
        return 130;
      case 1:
        return 145;
      case 2:
        return 120;
      default:
        return 110;
    }
  }
}
