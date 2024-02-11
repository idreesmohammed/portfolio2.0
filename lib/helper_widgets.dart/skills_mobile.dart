// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idreesportfolio/bloc/on_hover_bloc.dart';
import 'package:idreesportfolio/bloc/on_hover_event.dart';
import 'package:idreesportfolio/bloc/on_hover_state.dart';

import 'package:idreesportfolio/helper_class.dart';

class SkillsMobileView extends StatefulWidget {
  const SkillsMobileView({super.key});

  @override
  State<SkillsMobileView> createState() => _SkillsMobileViewState();
}

class _SkillsMobileViewState extends State<SkillsMobileView> {
  FlipCardController flipCardController = FlipCardController();
  FlipCardController flipCardController1 = FlipCardController();
  FlipCardController flipCardController2 = FlipCardController();
  FlipCardController flipCardController3 = FlipCardController();
  FlipCardController flipCardController4 = FlipCardController();
  FlipCardController flipCardController5 = FlipCardController();
  FlipCardController flipCardController6 = FlipCardController();
  FlipCardController flipCardController7 = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 60),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width),
              child: Wrap(
                children: [
                  FlipCard(
                      controller: flipCardController,
                      front: customBoxFront(0, flipCardController),
                      back: customBoxBack(0)),
                  FlipCard(
                      controller: flipCardController1,
                      front: customBoxFront(1, flipCardController1),
                      back: customBoxBack(1)),
                  FlipCard(
                      controller: flipCardController2,
                      front: customBoxFront(2, flipCardController2),
                      back: customBoxBack(2)),
                  FlipCard(
                      controller: flipCardController3,
                      front: customBoxFront(3, flipCardController3),
                      back: customBoxBack(3)),
                  FlipCard(
                      controller: flipCardController4,
                      front: customBoxFront(4, flipCardController4),
                      back: customBoxBack(4)),
                  FlipCard(
                      controller: flipCardController5,
                      front: customBoxFront(5, flipCardController5),
                      back: customBoxBack(5)),
                  FlipCard(
                      controller: flipCardController6,
                      front: customBoxFront(6, flipCardController6),
                      back: customBoxBack(6)),
                  FlipCard(
                      controller: flipCardController7,
                      front: customBoxFront(7, flipCardController7),
                      back: customBoxBack(7))
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Padding customBoxFront(int list, FlipCardController flipCard) {
    HoverBloc hoverBloc = HoverBloc();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<HoverBloc, HoverState>(
        bloc: hoverBloc,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => hoverBloc,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                flipCard.toggleCard();
              },
              onHover: (val) {
                hoverBloc.add(OnHoverActionEvent());
              },
              child: Container(
                  decoration: BoxDecoration(
                      color:
                          !hoverBloc.onChanged ? const Color(0xff051830) : null,
                      gradient: hoverBloc.onChanged
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
                      height: 150,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              HelperClass.skillsAndDescription[list]["image"],
                              height: 100),
                          const SizedBox(height: 20),
                          Text(
                            HelperClass.skillsAndDescription[list]["title"],
                            style: TextStyle(
                                color: hoverBloc.onChanged
                                    ? Colors.yellowAccent
                                    : Colors.white),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }

  Padding customBoxBack(int list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 150,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    HelperClass.customDescriptionBack[list]["description"],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: const TextStyle(color: Colors.white),
                  )),
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () {
                        js.context.callMethod('open',
                            [HelperClass.customDescriptionBack[list]["url"]]);
                      },
                      onHover: (val) {},
                      child: Row(children: [
                        const Text("Know More - ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        Expanded(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            "${HelperClass.customDescriptionBack[list]["url"]}",
                            style: const TextStyle(
                                color: Colors.yellowAccent, fontSize: 10),
                          ),
                        )
                      ]))
                ],
              ),
            ),
          )),
    );
  }
}
