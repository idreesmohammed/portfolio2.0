import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_class.dart';
import 'package:idreesportfolio/styles/custom_styles.dart';

class HeaderWebView extends StatelessWidget {
  const HeaderWebView({super.key, required this.onHeaderTap});
  final Function(int) onHeaderTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: CustomStyles.headerDecoration,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "<Idrees/>",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
          for (int i = 0; i < HelperClass.headerList.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () {
                    onHeaderTap(i);
                  },
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
