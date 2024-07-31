import 'package:bank_dashboard/enums/transaction_type.dart';
import 'package:flutter/material.dart';

class TransactionItemModel {
  final String icon, title, date;
  final Color bgColor;
  final TransactionType type;

  TransactionItemModel({
    required this.icon,
    required this.title,
    required this.date,
    required this.bgColor,
    required this.type,
  });
}
