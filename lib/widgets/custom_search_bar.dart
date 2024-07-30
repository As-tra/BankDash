import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 15,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff8BA3CB),
              size: 28,
            ),
            hintText: 'Search for something',
            hintStyle: Styles.interRegular15(context)
                .copyWith(color: const Color(0xff8BA3CB)),
            fillColor: const Color(0xffF5F7FA),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
