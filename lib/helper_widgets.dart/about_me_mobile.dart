import 'package:flutter/material.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: MediaQuery.sizeOf(context).height * 0.85,
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
                "Hi\nI'm Mohammed Idrees\nFront-End Developer\nFlutter Developer.\nIf you think Math is hard\nTry UI Design.",
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
