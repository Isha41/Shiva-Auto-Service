import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/contactus.text.dart';

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
    return Column(
      children: [
        SizedBox(
          height: screenHeight / 30,
        ),
        DecorationText(
            screenWidth: screenWidth,
            text: "We're here for you, Always ready to help."),
        // DecorationText(
        //     screenWidth: screenWidth,
        //     text:
        //         "Put your NEEDS in our hands & See MIND BLOWING RESULTS"),
        SizedBox(
          height: screenHeight / 37,
        ),
        DecorationText(
            screenWidth: screenWidth, text: "Let's CONNECT & UNITE."),
      ],
    );
  }
}
