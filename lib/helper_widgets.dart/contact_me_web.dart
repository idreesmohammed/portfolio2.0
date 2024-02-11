import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactMeWebView extends StatelessWidget {
  const ContactMeWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child:
                  LottieBuilder.asset("assets/Animation - 1707014496431.json"),
            ),
            const SizedBox(width: 7),
            SizedBox(
              height: 100,
              width: 100,
              child:
                  LottieBuilder.asset("assets/Animation - 1707014893376.json"),
            ),
            const SizedBox(width: 7),
            SizedBox(
              height: 100,
              width: 100,
              child:
                  LottieBuilder.asset("assets/Animation - 1707015011727.json"),
            ),
            const SizedBox(width: 7),
            SizedBox(
              height: 100,
              width: 100,
              child:
                  LottieBuilder.asset("assets/Animation - 1707015068164.json"),
            )
          ],
        ));
  }
}
