import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      margin: const EdgeInsets.only(left: 2),
      color: kSurface,
      child: Row(
        children: [
          Text(
            'Overview',
            style: Styles.interSemiBold28(context),
          ),
          const Spacer(),
          const CustomSearchBar(),
          const SizedBox(width: 30),
          CircleAvatar(
            radius: 25,
            child: SvgPicture.asset(Assets.imagesAppBarSettings),
          ),
          const SizedBox(width: 30),
          CircleAvatar(
            radius: 25,
            child: SvgPicture.asset(Assets.imagesAppBarnotification),
          ),
          const SizedBox(width: 30),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(Assets.imagesWomenProfile),
          )
        ],
      ),
    );
  }
}
