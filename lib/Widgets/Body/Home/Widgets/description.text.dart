import 'package:flutter/material.dart';
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
                      smallScreen: smallScreen,
                      text: "Cars",
                      color: Orange),
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
