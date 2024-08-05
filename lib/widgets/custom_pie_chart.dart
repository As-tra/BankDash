import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/pie_chart_section_model.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  static List<PieChartSectionModel> sections = const [
    PieChartSectionModel(
        title: 'Others', percentage: 25, color: Color(0xff1814F3)),
    PieChartSectionModel(
        title: 'Investment', percentage: 38, color: Color(0xffFA00FF)),
    PieChartSectionModel(
        title: 'Entertainment', percentage: 25, color: Color(0xff343C6A)),
    PieChartSectionModel(
        title: 'Bill Expense', percentage: 12, color: Color(0xffFC7900)),
  ];

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      decoration: BoxDecoration(
          color: kSurface, borderRadius: BorderRadius.circular(25)),
      child: AspectRatio(
        aspectRatio: 1,
        child: LayoutBuilder(builder: (context, constraints) {
          return PieChart(
            _getPieChartData(constraints, context),
            swapAnimationDuration: const Duration(milliseconds: 400),
            swapAnimationCurve: Curves.linear,
          );
        }),
      ),
    );
  }

  PieChartData _getPieChartData(
      BoxConstraints constraints, BuildContext context) {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          currentIndex = pieTouchResponse!.touchedSection!.touchedSectionIndex;
          setState(() {});
        },
      ),
      centerSpaceRadius: 0,
      sectionsSpace: 8.5,
      sections: CustomPieChart.sections.asMap().entries.map((ele) {
        return PieChartSectionData(
          borderSide: ele.key == currentIndex ? const BorderSide() : null,
          titlePositionPercentageOffset: 0.6,
          radius: getRadius(ele.key, constraints.maxWidth),
          color: ele.value.color,
          value: ele.value.percentage,
          title: "${ele.value.percentage}% \n${ele.value.title}",
          titleStyle: Styles.interSemiBold16(context).copyWith(color: kSurface),
        );
      }).toList(),
    );
  }

  double getRadius(int value, double width) {
    width = width / 2;
    switch (value) {
      case 0:
        return .83 * width;
      case 1:
        return .77 * width;
      case 2:
        return .9 * width;
      default:
        return width;
    }
  }
}
