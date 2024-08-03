import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/widgets/team_group.dart';
import 'package:flutter/material.dart';

class QuickTransferBody extends StatelessWidget {
  const QuickTransferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      decoration: BoxDecoration(
        color: kSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Column(
        children: [
          TeamGroup(),
        ],
      ),
    );
  }
}
