import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.sizeOf(context).width < SizeConfig.tablet;
    return Container(
      padding: isMobile
          ? null
          : const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: LineChart(
        LineChartData(
            maxY: 800,
            minY: 0,
            lineBarsData: _getLinesData,
            borderData: _getBorder(),
            titlesData: _getTitles(),
            gridData: _createGrid(),
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (value) => Colors.transparent,
              ),
              getTouchLineStart: (barData, spotIndex) {
                return 0;
              },
              getTouchLineEnd: (barData, spotIndex) => 0,
            )),
        duration: const Duration(milliseconds: 150),
        curve: Curves.linear,
      ),
    );
  }

  FlBorderData _getBorder() {
    return FlBorderData(
      show: true,
      border: Border.all(
        color: Colors.blueGrey,
        width: 0.4,
      ),
    );
  }

  FlGridData _createGrid() {
    return const FlGridData(
      verticalInterval: 1,
      horizontalInterval: 200,
    );
  }

  FlTitlesData _getTitles() {
    return FlTitlesData(
      topTitles: const AxisTitles(),
      rightTitles: const AxisTitles(),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          interval: 200,
          reservedSize: 40,
          showTitles: true,
          getTitlesWidget: getLeftTitleWidgets,
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: getBottomTitleWidgets,
        ),
      ),
    );
  }

  Widget getBottomTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value) {
      case 0:
        text = 'Jul';
      case 1:
        text = 'Aug';
      case 2:
        text = 'Sep';
      case 3:
        text = 'Oct';
      case 4:
        text = 'Nov';
      case 5:
        text = 'Dec';
      case 6:
        text = 'Jan';
      default:
        text = '';
    }
    return Text(
      text,
      style: const TextStyle(
        fontFamily: kInter,
        fontSize: 14,
        color: kPrimary1,
      ),
    );
  }

  Widget getLeftTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: const TextStyle(
          fontFamily: kInter,
          fontSize: 13,
          color: kPrimary1,
        ),
      ),
    );
  }

  List<LineChartBarData> get _getLinesData {
    return [
      LineChartBarData(
        color: kSecondary,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xff2D60FF).withOpacity(.5),
              const Color(0xff2D60FF).withOpacity(0),
            ],
          ),
        ),
        barWidth: 3,
        isCurved: true,
        dotData: const FlDotData(show: false),
        spots: const [
          FlSpot(0, 120),
          FlSpot(0.5, 370),
          FlSpot(1, 250),
          FlSpot(2, 430),
          FlSpot(2.4, 410),
          FlSpot(3, 780),
          FlSpot(4, 210),
          FlSpot(5, 570),
          FlSpot(6, 230),
          FlSpot(7, 600),
        ],
      ),
    ];
  }
}
