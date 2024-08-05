
import 'package:bank_dashboard/models/credit_card_model.dart';
import 'package:bank_dashboard/widgets/credit_card_item.dart';
import 'package:flutter/material.dart';

class CardsListView extends StatefulWidget {
  const CardsListView({
    super.key,
  });

  static List<CreditCardModel> items = [
    CreditCardModel(
        balance: '5,756',
        cardHolder: 'Eddy Cusuma',
        expireDate: '12/22',
        cardNumber: '3778 **** **** 1234'),
    CreditCardModel(
        balance: '5,756',
        cardHolder: 'Eddy Cusuma',
        expireDate: '12/22',
        cardNumber: '3778 **** **** 1234'),
  ];

  @override
  State<CardsListView> createState() => _CardsListViewState();
}

class _CardsListViewState extends State<CardsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        scrollDirection: Axis.horizontal,
        itemCount: CardsListView.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                index = currentIndex;
                setState(() {});
              }
            },
            child: CreditCardItem(
              isActive: currentIndex == index,
              creditCardModel: CardsListView.items[index],
            ),
          );
        },
      );
    });
  }
}

// 4- fit the size of the list view