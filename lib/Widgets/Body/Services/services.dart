import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/body/services.desktop.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/body/services.mobile.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var smallScreen = ResponsiveWidget.isSmallScreen(context);
    return ResponsiveWidget.isSmallScreen(context)
        ? ScreenMobile(
            smallScreen: smallScreen,
            screenHeight: screenHeight,
            screenWidth: screenWidth)
        : ScreensDesktop(
            smallScreen: smallScreen,
            screenHeight: screenHeight,
            screenWidth: screenWidth);
  }
}
