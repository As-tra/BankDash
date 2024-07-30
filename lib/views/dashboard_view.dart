import 'package:bank_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:bank_dashboard/widgets/custom_drawer.dart';
import 'package:bank_dashboard/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const Placeholder(),
        tabletLayout: (context) => const Placeholder(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
