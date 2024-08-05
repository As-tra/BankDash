import 'package:bank_dashboard/enums/transaction_type.dart';
import 'package:bank_dashboard/models/transaction_item_model.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class RecentTransactionList extends StatelessWidget {
  const RecentTransactionList({super.key});

  static List<TransactionItemModel> items = [
    TransactionItemModel(
      icon: Assets.imagesYellowCards,
      title: 'Deposit from my Card',
      date: '28 January 2021',
      bgColor: const Color(0xffFFF5D9),
      type: TransactionType.withdraw,
      amount: r'$850',
    ),
    TransactionItemModel(
      icon: Assets.imagesPaypal,
      title: 'Deposit Paypal',
      date: '28 January 2021',
      bgColor: const Color(0xffE7EDFF),
      type: TransactionType.deposit,
      amount: r'$2,500',
    ),
    TransactionItemModel(
      icon: Assets.imagesGreenDollar,
      title: 'Jemi Wilson',
      date: '21 January 2021',
      bgColor: const Color(0xffDCFAF8),
      type: TransactionType.deposit,
      amount: r'$2,500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.map((ele) => TransactionItem(itemModel: ele)).toList(),
    );
  }
}
