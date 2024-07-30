import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/models/drawer_item_model.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.itemModel});
  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildSelectedDecoration(),
        const SizedBox(width: 32),
        SvgPicture.asset(
          itemModel.image,
          colorFilter: const ColorFilter.mode(kSelectionColor, BlendMode.srcIn),
        ),
        const SizedBox(width: 26),
        Text(
          itemModel.title,
          style: Styles.interMedium18(context).copyWith(color: kSelectionColor),
        ),
      ],
    );
  }

  Container _buildSelectedDecoration() {
    return Container(
      height: 60,
      width: 6,
      decoration: const BoxDecoration(
        color: kSelectionColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.itemModel});
  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 38, height: 60),
        SvgPicture.asset(
          itemModel.image,
        ),
        const SizedBox(width: 26),
        Text(
          itemModel.title,
          style: Styles.interMedium18(context),
        ),
      ],
    );
  }
}
