import 'package:bank_dashboard/enums/transaction_type.dart';
import 'package:bank_dashboard/models/transaction_item_model.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.itemModel});
  final TransactionItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22.5,
        backgroundColor: itemModel.bgColor,
        child: SvgPicture.asset(itemModel.icon),
      ),
      title: Text(
        itemModel.title,
        style: Styles.interMedium16(context),
      ),
      subtitle: Text(
        itemModel.date,
        style: Styles.interRegular15(context),
      ),
      trailing: Text(
        "${itemModel.type == TransactionType.deposit ? '+' : '-'}${itemModel.amount}",
        style: Styles.interMedium18(context).copyWith(
          color: itemModel.type == TransactionType.deposit
              ? const Color(0xff41D4A8)
              : const Color(0xffFF4B4A),
        ),
      ),
    );
  }
}
