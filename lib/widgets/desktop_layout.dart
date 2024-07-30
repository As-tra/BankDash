import 'package:bank_dashboard/widgets/custom_drawer.dart';
import 'package:bank_dashboard/widgets/overview_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(child: OverviewSection()),
      ],
    );
  }
}
