import 'package:bank_dashboard/models/drawer_item_model.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:bank_dashboard/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  static List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesHome, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransaction, title: 'Transactions'),
    DrawerItemModel(image: Assets.imagesAccount, title: 'Accounts'),
    DrawerItemModel(image: Assets.imagesInvestment, title: 'Investments'),
    DrawerItemModel(image: Assets.imagesCreditCard, title: 'Credit Cards'),
    DrawerItemModel(image: Assets.imagesLoan, title: 'Loans'),
    DrawerItemModel(image: Assets.imagesService, title: 'Services'),
    DrawerItemModel(image: Assets.imagesPrivileges, title: 'My Privileges'),
    DrawerItemModel(image: Assets.imagesSettings, title: 'Setting'),
  ];

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.sizeOf(context).width < SizeConfig.tablet;
    return SliverList.builder(
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
            padding:
                isMobile ? EdgeInsets.zero : const EdgeInsets.only(bottom: 6.0),
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
