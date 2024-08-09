import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:bank_dashboard/widgets/bar_chart_caption.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  static Color firstBarColor = const Color(0xff1814F3);
  static Color secondBarColor = const Color(0xff16DBCC);
  static List barsValues = [
    [480, 250],
    [340, 120],
    [310, 270],
    [485, 375],
    [150, 225],
    [395, 215],
    [400, 310],
  ];

  @override
  Widget build(BuildContext context) {
    // test if the we are in the mobile layout to minimize the
    // the width of the bars
    bool isMobile = MediaQuery.sizeOf(context).width < SizeConfig.tablet;
    return Container(
      padding: isMobile
          ? null
          : const EdgeInsets.symmetric(horizontal: 33, vertical: 28),
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const BarChartCaption(),
          const SizedBox(height: 22),
          Expanded(
            child: BarChart(
              BarChartData(
                barGroups: _buildBars(isMobile),
                titlesData: _getTitles(),
                maxY: 500,
                gridData: _buildGrid(),
                barTouchData: BarTouchData(enabled: false),
                borderData: _getBorder(),
              ),
              swapAnimationDuration: const Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
            ),
          ),
        ],
      ),
    );
  }

  FlBorderData _getBorder() {
    return FlBorderData(
      border: Border.all(
        color: Colors.transparent,
      ),
    );
  }

  FlGridData _buildGrid() {
    return FlGridData(
      horizontalInterval: 100,
      drawVerticalLine: false,
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: Color(0xffF3F3F5),
          strokeWidth: 1,
        );
      },
    );
  }

  FlTitlesData _getTitles() {
    return FlTitlesData(
      rightTitles: const AxisTitles(),
      topTitles: const AxisTitles(),
      bottomTitles: AxisTitles(
        sideTitles:
            SideTitles(showTitles: true, getTitlesWidget: _getBottomTitlesData),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: _getLeftTitlesData,
          reservedSize: 50,
        ),
      ),
    );
  }

  SideTitleWidget _getBottomTitlesData(double value, TitleMeta meta) {
    late String text;
    switch (value.toInt()) {
      case 0:
        text = 'Sat';
      case 1:
        text = 'Sun';
      case 2:
        text = 'Mon';
      case 3:
        text = 'Tue';
      case 4:
        text = 'Wed';
      case 5:
        text = 'Thu';
      case 6:
        text = 'Fri';
    }
    return SideTitleWidget(
      axisSide: AxisSide.bottom,
      child: _getSideTitleStyle(text),
    );
  }

  SideTitleWidget _getLeftTitlesData(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: AxisSide.left,
      space: 24,
      child: _getSideTitleStyle(value.toInt().toString()),
    );
  }

  Text _getSideTitleStyle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: kInter,
        fontSize: 13,
        color: kPrimary1,
      ),
    );
  }

  List<BarChartGroupData> _buildBars(bool isMobile) {
    
    return barsValues
        .asMap()
        .entries
        .map(
          (ele) => BarChartGroupData(
            barsSpace: 12,
            x: ele.key,
            barRods: [
              BarChartRodData(
                width: isMobile ? 7: 15,
                toY: ele.value[0],
                color: firstBarColor,
              ),
              BarChartRodData(
                width: isMobile ? 7: 15,
                toY: ele.value[1],
                color: secondBarColor,
              )
            ],
          ),
        )
        .toList();
  }
}
