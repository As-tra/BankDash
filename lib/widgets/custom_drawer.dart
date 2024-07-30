import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/custom_drawer_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kSurface,
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(Assets.iconsLogo),
            title: Text(
              'BankDash.',
              style: Styles.abelRegular25(context),
            ),
          ),
          const Expanded(child: CustomDrawerListView()),
        ],
      ),
    );
  }
}
