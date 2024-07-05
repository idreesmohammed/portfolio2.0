// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:idreesportfolio/helper_class.dart';
import 'dart:js' as js;

class ProjectsMobileView extends StatelessWidget {
  ProjectsMobileView({super.key});
  final analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width),
              child: Wrap(
                children: [
                  for (int i = 0;
                      i < HelperClass.projectDescription.length;
                      i++)
                    customContainer(false, i)
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
              height: 300,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    HelperClass.projectDescription[list]["title"],
                    style: const TextStyle(color: Colors.yellowAccent),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      HelperClass.projectDescription[list]["description"],
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        analytics.logEvent(name: 'Users looking');
                        js.context.callMethod(
                            'open', [HelperClass.gitHubProjectLink[list]]);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 20,
                        color: Colors.yellowAccent,
                      ),
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
