import 'package:bank_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankDashBoard());
}

class BankDashBoard extends StatelessWidget {
  const BankDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
