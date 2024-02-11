// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:js' as js;

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
            InkWell(
              onTap: () {
                js.context
                    .callMethod('open', ['https://github.com/idreesmohammed']);
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: LottieBuilder.asset(
                    "assets/Animation - 1707014496431.json"),
              ),
            ),
            const SizedBox(width: 7),
            InkWell(
              onTap: () {
                js.context.callMethod(
                    'open', ['https://www.instagram.com/mohammed___idrees21/']);
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: LottieBuilder.asset(
                    "assets/Animation - 1707014893376.json"),
              ),
            ),
            const SizedBox(width: 7),
            InkWell(
              onTap: () {
                js.context.callMethod('open',
                    ['https://www.linkedin.com/in/mohammed-idrees-757034184']);
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: LottieBuilder.asset(
                    "assets/Animation - 1707015011727.json"),
              ),
            ),
            const SizedBox(width: 7),
            InkWell(
              onTap: () {
                String toMailId = 'mohammedidrees21@gmail.com';
                String subject = "";
                String body = "";
                js.context.callMethod(
                    'open', ['mailto:$toMailId?subject=$subject&body=$body']);
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: LottieBuilder.asset(
                    "assets/Animation - 1707015068164.json"),
              ),
            )
          ],
        ));
  }
}
