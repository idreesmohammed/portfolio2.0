// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:js' as js;

import 'package:idreesportfolio/bloc/on_hover_bloc.dart';
import 'package:idreesportfolio/bloc/on_hover_event.dart';
import 'package:idreesportfolio/bloc/on_hover_state.dart';
import 'package:idreesportfolio/helper_class.dart';

class ContactMeMobileView extends StatelessWidget {
  const ContactMeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            for (int i = 0; i < HelperClass.socialMedia.length; i++)
              customInkWell(i),
          ],
        ));
  }

  customInkWell(int i) {
    HoverBloc bloc = HoverBloc();
    return BlocBuilder<HoverBloc, HoverState>(
      bloc: bloc,
      builder: (context, state) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod('open', [HelperClass.socialMedia[i]]);
              },
              onHover: (val) {
                bloc.add(OnHoverActionEvent());
              },
              child: SizedBox(
                child: FaIcon(HelperClass.socialMediaIcons[i],
                    size: 40,
                    color: bloc.onChanged ? Colors.yellowAccent : Colors.white),
              ),
            ),
            const SizedBox(width: 20),
          ],
        );
      },
    );
  }
}
