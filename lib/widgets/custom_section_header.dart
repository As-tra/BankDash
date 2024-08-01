import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSectionHeader extends StatelessWidget {
  const CustomSectionHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.interSemiBold22(context),
        ),
        
      ],
    );
  }
}
