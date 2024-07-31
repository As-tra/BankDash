import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CardInfoSection extends StatelessWidget {
  const CardInfoSection({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'CARD HOLDER',
                style: Styles.latoRegular12(context).copyWith(
                  color: isActive ? Colors.white.withOpacity(0.7) : kPrimary1,
                ),
              ),
              Text(
                'Eddy Cusuma',
                style: Styles.latoSemiBold15(context).copyWith(
                  color: isActive ? null : const Color(0xff343C6A),
                ),
              ),
            ],
          ),
          const Flexible(child: SizedBox(width: 67)),
          Column(
            children: [
              Text(
                'VALID THRU',
                style: Styles.latoRegular12(context).copyWith(
                  color: isActive ? Colors.white.withOpacity(0.7) : kPrimary1,
                ),
              ),
              Text(
                '12/22',
                style: Styles.latoSemiBold15(context).copyWith(
                  color: isActive ? null : const Color(0xff343C6A),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
