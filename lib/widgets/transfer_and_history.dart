import 'package:bank_dashboard/widgets/balance_history.dart';
import 'package:bank_dashboard/widgets/quick_transfer.dart';
import 'package:flutter/material.dart';

class TransferAndHistory extends StatelessWidget {
  const TransferAndHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 89, child: QuickTransfer()),
          SizedBox(width: 30),
          Expanded(flex: 127, child: BalanceHistory())
        ],
      ),
    );
  }
}
