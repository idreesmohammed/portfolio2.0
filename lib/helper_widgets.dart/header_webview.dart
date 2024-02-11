import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_class.dart';
import 'package:idreesportfolio/styles/custom_styles.dart';

class HeaderWebView extends StatelessWidget {
  const HeaderWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: CustomStyles.headerDecoration,
      child: Row(
        children: [
          const Text("<Idrees/>"),
          const Spacer(),
          for (int i = 0; i < HelperClass.headerList.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    HelperClass.headerList[i],
                    style: const TextStyle(color: Colors.white),
                  )),
            )
        ],
      ),
    );
  }
}
