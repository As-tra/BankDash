import 'package:bank_dashboard/models/drawer_item_model.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  static List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.iconsHome, title: 'Dashboard'),
    DrawerItemModel(image: Assets.iconsTransaction, title: 'Transactions'),
    DrawerItemModel(image: Assets.iconsAccount, title: 'Accounts'),
    DrawerItemModel(image: Assets.iconsInvestment, title: 'Investments'),
    DrawerItemModel(image: Assets.iconsCreditCard, title: 'Credit Cards'),
    DrawerItemModel(image: Assets.iconsLoan, title: 'Loans'),
    DrawerItemModel(image: Assets.iconsService, title: 'Services'),
    DrawerItemModel(image: Assets.iconsPrivileges, title: 'My Privileges'),
    DrawerItemModel(image: Assets.iconsSettings, title: 'Setting'),
  ];

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CustomDrawerListView.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              currentIndex = index;
              setState(() {});
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: CustomDrawerItem(
              item: CustomDrawerListView.items[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
