import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  final int divPage;
  const CustomDivider({super.key, required this.text, required this.divPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: divPage == 0 ? 100 : 70),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          Text(
            " $text ",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
