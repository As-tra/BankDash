import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardNumberSection extends StatelessWidget {
  const CardNumberSection({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      decoration: BoxDecoration(
        border: isActive
            ? null
            : const Border(
                top: BorderSide(
                color: Color(0xffDFEAF2),
              )),
        gradient: isActive
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0)
                ],
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '3778 **** **** 1234',
            style: Styles.latoSemiBold22(context).copyWith(
              color: isActive ? null : const Color(0xff343C6A),
            ),
          ),
          SvgPicture.asset(isActive
              ? Assets.imagesWhiteCardUnion
              : Assets.imagesBlackCardUnion),
        ],
      ),
    );
  }
}
