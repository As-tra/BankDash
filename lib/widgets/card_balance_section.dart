import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CardBalanceSection extends StatelessWidget {
  const CardBalanceSection({super.key,required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, top: 24, right: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Balance',
                style: Styles.latoRegular12(context).copyWith(
                  color: isActive ? null : kPrimary1,
                ),
              ),
              Text(
                r'$5,756',
                style: Styles.latoSemiBold20(context).copyWith(
                  color: isActive ? null : const Color(0xff343C6A),
                ),
              )
            ],
          ),
          Image.asset( isActive ? Assets.imagesWhiteSimCard : Assets.imagesBlackSimCard),
        ],
      ),
    );
  }
}
