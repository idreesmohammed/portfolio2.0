import 'package:flutter/material.dart';
import 'package:idreesportfolio/helper_widgets.dart/about_me_desktop.dart';
import 'package:idreesportfolio/helper_widgets.dart/about_me_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/contact_me_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/contact_me_web.dart';
import 'package:idreesportfolio/helper_widgets.dart/custom_divider.dart';
import 'package:idreesportfolio/helper_widgets.dart/drawer_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/header_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/header_webview.dart';
import 'package:idreesportfolio/helper_widgets.dart/projects_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/projects_web.dart';
import 'package:idreesportfolio/helper_widgets.dart/skills_mobile.dart';
import 'package:idreesportfolio/helper_widgets.dart/skills_webview.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> headerKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      print(boxConstraints);
      return Scaffold(
        backgroundColor: const Color(0xff021227),
        key: scaffoldKey,
        endDrawer: boxConstraints.maxWidth >= 600
            ? null
            : MobileDrawer(onHeaderItemTap: (int headerIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollSection(headerIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: headerKeys.first),
              if (boxConstraints.maxWidth >= 600)
                HeaderWebView(onHeaderTap: (int headerIndex) {
                  scrollSection(headerIndex);
                })
              else
                HeaderMobile(menuIcon: () {
                  scaffoldKey.currentState?.openEndDrawer();
                }),
              if (boxConstraints.maxWidth >= 600)
                const AboutMeDesktop()
              else
                const AboutMeMobile(),
              if (boxConstraints.maxWidth >= 600)
                const CustomDivider(text: "Tech Stack", divPage: 0)
              else
                const CustomDivider(text: "Tech Stack", divPage: 1),
              if (boxConstraints.maxWidth >= 800)
                SkillWebView(key: headerKeys[1])
              else
                SkillsMobileView(key: headerKeys[1]),
              if (boxConstraints.maxWidth >= 600)
                const CustomDivider(text: "My Projects", divPage: 0)
              else
                const CustomDivider(text: "My Projects", divPage: 1),
              if (boxConstraints.maxWidth >= 800)
                ProjectsWebView(key: headerKeys[2])
              else
                ProjectsMobileView(key: headerKeys[2]),
              if (boxConstraints.maxWidth >= 600)
                const CustomDivider(text: "Contact Me", divPage: 0)
              else
                const CustomDivider(text: "Contact Me", divPage: 1),
              if (boxConstraints.maxWidth >= 600)
                ContactMeWebView(key: headerKeys[3])
              else
                ContactMeMobileView(key: headerKeys[3]),
              if (boxConstraints.maxWidth >= 600)
                const Center(
                  child: SizedBox(
                      height: 60,
                      child: Text(
                        "<Developed using Flutter by Idrees/>",
                        style: TextStyle(
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.w900),
                      )),
                )
              else
                const Center(
                  child: SizedBox(
                    height: 50,
                    child: Text("<Developed using Flutter by Idrees/>",
                        style: TextStyle(color: Colors.yellowAccent)),
                  ),
                )
            ],
          ),
        ),
      );
    });
  }

  void scrollSection(int headerIndex) {
    if (headerIndex == 4) {
      js.context.callMethod('open', [
        'https://drive.google.com/file/d/1hRTjTMp-l71xCyEseFOZXPSNeA07qGxe/view?usp=drivesdk'
      ]);
      return;
    }
    final key = headerKeys[headerIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 5), curve: Curves.easeInOut);
  }
}
