import 'package:bank_dashboard/utils/styles.dart';
import 'package:bank_dashboard/widgets/cards_list_view.dart';
import 'package:flutter/material.dart';

class MyMobileCards extends StatelessWidget {
  const MyMobileCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Cards',
                style: Styles.interSemiBold16(context),
              ),
              Text(
                'See All',
                style: Styles.interSemiBold14(context),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const CardsListView()
      ],
    );
  }
}
