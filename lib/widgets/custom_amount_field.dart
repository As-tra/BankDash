import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAmoutField extends StatelessWidget {
  const CustomAmoutField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffEDF1F7),
        suffixIcon: _buildSendButton(context),
        filled: true,
        hintText: '525.50',
        hintStyle: Styles.interRegular16(context).copyWith(
          color: kPrimary1,
        ),
        border: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide.none,
    );
  }

  Container _buildSendButton(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kSecondary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Send',
              style: Styles.interMedium16(context).copyWith(
                color: kSurface,
              ),
            ),
            const SizedBox(width: 11),
            SvgPicture.asset(Assets.imagesSend),
          ],
        ));
  }
}
