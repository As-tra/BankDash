import 'package:bank_dashboard/widgets/dashboard_app_bar.dart';
import 'package:flutter/material.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DashboardAppBar(),
      ],
    );
  }
}
