import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class BarChartCaption extends StatelessWidget {
  const BarChartCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildCaptionTitle(text: 'Deposit', color: const Color(0xff16DBCC),context: context),
        const SizedBox(width: 30),
        _buildCaptionTitle(text: 'Withdraw', color: const Color(0xff1814F3),context: context),
      ],
    );
  }
}

Row _buildCaptionTitle({required String text, required Color color,required BuildContext context}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 7.5,
        backgroundColor: color,
      ),
      const SizedBox(width: 10),
      Text(
        text,
        style: Styles.interRegular15(context),
      )
    ],
  );
}
