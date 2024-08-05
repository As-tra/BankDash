
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
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CardsListView.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                currentIndex = index;
                setState(() {});
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: CreditCardItem(
                  isActive: currentIndex == index,
                  creditCardModel: CardsListView.items[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
