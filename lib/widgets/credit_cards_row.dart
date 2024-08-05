import 'package:bank_dashboard/models/credit_card_model.dart';
import 'package:bank_dashboard/widgets/credit_card_item.dart';
import 'package:flutter/material.dart';

class CreditCardsRow extends StatefulWidget {
  const CreditCardsRow({
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
  State<CreditCardsRow> createState() => _CardsListViewState();
}

class _CardsListViewState extends State<CreditCardsRow> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              currentIndex = 0;
              setState(() {});
            },
            child: CreditCardItem(
              isActive: currentIndex == 0,
              creditCardModel: CreditCardsRow.items[0],
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GestureDetector(
            onTap: () {
              currentIndex = 1;
              setState(() {});
            },
            child: CreditCardItem(
              isActive: currentIndex == 1,
              creditCardModel: CreditCardsRow.items[1],
            ),
          ),
        ),
      ],
    );
  }
}
