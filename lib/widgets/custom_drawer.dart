import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/custom_drawer_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kSurface,
      width: MediaQuery.sizeOf(context).width < SizeConfig.desktop &&
              MediaQuery.sizeOf(context).width > SizeConfig.tablet
          ? 230
          : null,
      shape: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? null
          : const BeveledRectangleBorder(),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 38),
                  leading: Image.asset(Assets.imagesLogo),
                  title: Text(
                    'BankDash.',
                    style: Styles.abelRegular25(context),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          const CustomDrawerListView(),
        ],
      ),
    );
  }
}
