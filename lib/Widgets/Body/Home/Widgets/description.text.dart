import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/Widgets/decoratoin.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.smallScreen,
  }) : super(key: key);

  final bool smallScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 10,
            right: 10,
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    AutoSizeText(
                      "Bagmati Corridor,Kathmandu",
                      style: TextStyle(
                          fontFamily: "PlayfairDisplay",
                          fontSize: smallScreen
                              ? 10
                              : ResponsiveWidget.isMediumScreen(context)
                                  ? 10
                                  : 15,
                          color: Colors.lightGreen),
                    ),
                    AutoSizeText(
                      "Gokarneshowr-6,Sarweshor Gate",
                      style: TextStyle(
                          fontFamily: "PlayfairDisplay",
                          fontSize: smallScreen
                              ? 10
                              : ResponsiveWidget.isMediumScreen(context)
                                  ? 10
                                  : 15,
                          color: Colors.lightGreen),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
          top: smallScreen ? 10 : 30,
          left: smallScreen ? 10 : 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecorationText(
                smallScreen: smallScreen,
                text: "Effortlessly",
                color: Colors.white,
              ),
              Row(
                children: [
                  DecorationText(
                      smallScreen: smallScreen,
                      text: "Transform Your ",
                      color: Colors.white),
                  DecorationText(
                      smallScreen: smallScreen, text: "Cars", color: orange),
                ],
              ),
              DecorationText(
                  smallScreen: smallScreen,
                  text: "Condition",
                  color: Colors.white)
            ],
          ),
        ),
      ],
    );
  }
}
