import 'package:flutter/material.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: MediaQuery.sizeOf(context).height * 0.8,
      constraints: const BoxConstraints(minHeight: 600),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return const LinearGradient(
                    colors: [Colors.black, Colors.white]).createShader(bounds);
              },
              child: Image.asset(
                "assets/emojiportfolio.png",
                width: MediaQuery.sizeOf(context).width / 2,
                height: MediaQuery.sizeOf(context).height / 1.9,
              ),
            ),
            const Expanded(
              child: Text(
                "Hi\nI'm Mohammed Idrees\nFlutter Developer.\nI love to build products that can be used by million of people",
                overflow: TextOverflow.ellipsis,
                maxLines: 7,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
    );
  }
}
