import 'package:bank_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  double _width = 280;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus) {
      setState(() {
        _width = 400;
      });
    } else {
      setState(() {
        _width = 280;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: _width,
      child: TextField(
        focusNode: _focusNode,
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
          ),
        ),
      ),
    );
  }
}
