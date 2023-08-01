import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/contactus.mobile.founder.dart';
import 'contactus.description.dart';
import 'founderinfo.dart';

class ContactUsMobile extends StatelessWidget {
  const ContactUsMobile({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescriptionText(
            screenHeight: screenHeight / 2, screenWidth: screenWidth),
        FoundersInfo(screenWidth: screenWidth, screenHeight: screenHeight),
      ],
    );
  }
}
