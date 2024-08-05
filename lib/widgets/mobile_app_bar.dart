import 'package:bank_dashboard/utils/assets.dart';
import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/mobile_search_bar.dart';
import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: Color(0xff343C6A),
                size: 30,
              ),
              Text(
                'Overview',
                style: Styles.interSemiBold20(context),
              ),
              const CircleAvatar(
                radius: 17.5,
                backgroundImage: AssetImage(Assets.imagesWomenProfile),
              )
            ],
          ),
          const SizedBox(height: 20),
          const MobileSearchBar(),
        ],
      ),
    );
  }
}
