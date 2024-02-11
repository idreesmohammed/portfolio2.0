import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_class.dart';
import 'dart:js' as js;

class ProjectsWebView extends StatefulWidget {
  const ProjectsWebView({super.key});

  @override
  State<ProjectsWebView> createState() => _ProjectsWebViewState();
}

class _ProjectsWebViewState extends State<ProjectsWebView> {
  bool isHovered = false;
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  bool isHovered4 = false;
  bool isHovered5 = false;
  bool isHovered6 = false;
  bool isHovered7 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.fromLTRB(25, 20, 20, 60),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.60),
              child: Wrap(
                children: [
                  for (int i = 0;
                      i < HelperClass.projectDescription.length;
                      i++)
                    customContainer(isHovered, i)
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Padding customContainer(bool onHover, int list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: !onHover ? const Color(0xff051830) : null,
              gradient: onHover
                  ? const LinearGradient(
                      colors: [Color(0xff309549), Color(0xff021227)])
                  : null,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 260,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    HelperClass.projectDescription[list]["title"],
                    style: TextStyle(color: Colors.yellowAccent),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      HelperClass.projectDescription[list]["description"],
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/GitHub-Mark-ea2971cee799-removebg-preview.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )),
    );
  }
}
