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

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      print(boxConstraints);
      return Scaffold(
        backgroundColor: const Color(0xff021227),
        //0xff309543
        key: scaffoldKey,
        endDrawer: boxConstraints.maxWidth >= 600 ? null : const MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (boxConstraints.maxWidth >= 600)
              const HeaderWebView()
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
              const SkillWebView()
            else
              const SkillsMobileView(),
            if (boxConstraints.maxWidth >= 600)
              const CustomDivider(text: "My Projects", divPage: 0)
            else
              const CustomDivider(text: "My Projects", divPage: 1),
            if (boxConstraints.maxWidth >= 800)
              const ProjectsWebView()
            else
              const ProjectsMobileView(),
            if (boxConstraints.maxWidth >= 600)
              const CustomDivider(text: "Contact Me", divPage: 0)
            else
              const CustomDivider(text: "Contact Me", divPage: 1),
            if (boxConstraints.maxWidth >= 600)
              const ContactMeWebView()
            else
              const ContactMeMobileView()
          ],
        ),
      );
    });
  }
}
