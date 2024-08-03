import 'package:bank_dashboard/widgets/custom_section_header.dart';
import 'package:bank_dashboard/widgets/quick_transfer_body.dart';
import 'package:flutter/material.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(text: 'Quick Transfer'),
        SizedBox(height: 20),
        QuickTransferBody()
      ],
    );
  }
}
