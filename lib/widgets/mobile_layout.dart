import 'package:bank_dashboard/widgets/mobile_app_bar.dart';
import 'package:bank_dashboard/widgets/my_cards.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobileAppBar(),
        SizedBox(height: 22),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: AspectRatio(aspectRatio: 1.7, child: MyCards()),
        ),
      ],
    );
  }
}
