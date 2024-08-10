import 'package:flutter/material.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    super.key,
    required this.child,
    this.color = Colors.white,
    this.gradient,
  });
  final Widget child;
  final Color color;
  final LinearGradient? gradient;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.all(width < 1700 ? 15 : 25),
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
