import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:bank_dashboard/widgets/team_group.dart';
import 'package:bank_dashboard/widgets/write_amout_part.dart';
import 'package:flutter/material.dart';

class QuickTransferBody extends StatelessWidget {
  const QuickTransferBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.sizeOf(context).width < SizeConfig.tablet;
    return Container(
      padding: isMobile
          ? null
          : const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Column(
        children: [
          TeamGroup(),
          SizedBox(height: 30),
          WriteAmoutPart(),
        ],
      ),
    );
  }
}
