import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/Body/aboutus.desktop.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/Body/aboutus.mobile.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return 
      Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Bg3.png"), fit: BoxFit.fill),
        ),
        child: ResponsiveWidget.isLargeScreen(context)
            ? AboutUsDesktop(
                screenWidth: screenWidth, screenHeight: screenHeight)
            : AboutUSMobile(
                screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
