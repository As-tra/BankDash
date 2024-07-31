import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCardItem extends StatelessWidget {
  const CreditCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 290 / 172,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), gradient: kGradient),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Balance',
                      style: Styles.latoRegular12(context),
                    ),
                    Text(
                      r'$5,756',
                      style: Styles.latoSemiBold20(context),
                    )
                  ],
                ),
                SvgPicture.asset(Assets.imagesCardSim),
              ],
            )
          ],
        ),
      ),
    );
  }
}
