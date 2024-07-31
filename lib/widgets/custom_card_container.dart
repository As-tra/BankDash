import 'package:flutter/material.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    super.key,
    required this.child,
    this.color = Colors.white,
  });
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25)
      ),
      child: child,
    );
  }
}
