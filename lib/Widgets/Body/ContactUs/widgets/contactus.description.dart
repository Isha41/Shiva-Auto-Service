import 'package:flutter/material.dart';
import 'contactus.text.dart';
import 'contactus.text.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DecorationText(
                  screenWidth: screenWidth,
                  text: "We're here for you, Always ready to help"),
              DecorationText(
                  screenWidth: screenWidth,
                  text:
                      "Put your NEEDS in our hands & See MIND BLOWING RESULTS"),
              DecorationText(
                  screenWidth: screenWidth, text: "Let's CONNECT & UNITE"),
            ],
          ),
        )
      ],
    );
  }
}
