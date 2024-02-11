import 'package:flutter/material.dart';
import 'package:idreesportfolio/styles/custom_styles.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? menuIcon;
  const HeaderMobile({super.key, this.menuIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: CustomStyles.headerDecoration,
        child: Row(
          children: [
            const Text("<Idrees/>"),
            const Spacer(),
            IconButton(onPressed: menuIcon, icon: const Icon(Icons.menu)),
            const SizedBox(
              width: 15,
            )
          ],
        ));
  }
}
