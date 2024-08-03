import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/custom_amount_field.dart';
import 'package:flutter/material.dart';

class WriteAmoutPart extends StatelessWidget {
  const WriteAmoutPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Write Amount',
          style: Styles.interRegular16(context).copyWith(
            color: kPrimary1,
          ),
        ),
        const SizedBox(width: 27),
        const Expanded(child:CustomAmoutField())
      ],
    );
  }
}
