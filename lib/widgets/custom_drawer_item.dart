import 'package:bank_dashboard/models/drawer_item_model.dart';
import 'package:bank_dashboard/widgets/inactive_and_active_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.item,
    required this.isActive,
  });
  final DrawerItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModel: item)
        : InActiveDrawerItem(itemModel: item);
  }
}
