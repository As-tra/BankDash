import 'package:bank_dashboard/utils/size_config.dart';
import 'package:bank_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:bank_dashboard/widgets/custom_drawer.dart';
import 'package:bank_dashboard/widgets/desktop_layout.dart';
import 'package:bank_dashboard/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? Colors.white
            : const Color(0xffF5F7FA),
        drawer: const CustomDrawer(),
        body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const DesktopLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ),
      ),
    );
  }
}
