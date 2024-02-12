import 'package:flutter/material.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.sizeOf(context).height / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Hi\nI'm Mohammed Idrees\nFront-End Developer\nFlutter Developer.\nIf you think\nMath is hard\nTry UI Design.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              height: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(colors: [Colors.black, Colors.white])
                  .createShader(bounds);
            },
            child: Image.asset(
              "assets/emojiportfolio.png",
              width: MediaQuery.sizeOf(context).width / 3,
              height: MediaQuery.sizeOf(context).height / 1.5,
            ),
          )
        ],
      ),
    );
  }
}
