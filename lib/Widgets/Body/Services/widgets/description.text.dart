import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/Text.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.smallScreen,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final bool smallScreen;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: smallScreen ? screenHeight / 2 : screenHeight,
          width: smallScreen ? screenWidth : screenWidth / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DecorationText(
                  smallScreen: smallScreen,
                  screenWidth: screenWidth,
                  text: "Expert Maintenance and Repairs"),
              DecorationText(
                  smallScreen: smallScreen,
                  screenWidth: screenWidth,
                  text: "Ready to Serve You with Expertise and Dedication"),
              DecorationText(
                  smallScreen: smallScreen,
                  screenWidth: screenWidth,
                  text: "Serving You Since 15 years"),
            ],
          ),
        )
      ],
    );
  }
}
