import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/description.text.dart';

class ServicesBG extends StatelessWidget {
  const ServicesBG({
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
    return Container(
      height: smallScreen ? screenHeight/2.5 : screenHeight,
      width: smallScreen ? screenWidth : ResponsiveWidget.isMediumScreen(context)? screenWidth/2:screenWidth/1.7,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/Bg4.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: DescriptionText(smallScreen: smallScreen, screenHeight: screenHeight, screenWidth: screenWidth),
    );
  }
}




