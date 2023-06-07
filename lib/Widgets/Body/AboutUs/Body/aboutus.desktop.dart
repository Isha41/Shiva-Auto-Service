import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/widgets/founders.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/widgets/maintext.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/widgets/serviceslist.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/widgets/servicetext.dart';


class AboutUsDesktop extends StatelessWidget {
  const AboutUsDesktop({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ServiceText(screenWidth: screenWidth),
            MainText(
                screenWidth: screenWidth, screenHeight: screenHeight),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServicesList(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              Founders(screenWidth: screenWidth)
            ],
          ),
        ),
      ],
    );
  }
}