import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/Widgets/background.image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var smallScreen = ResponsiveWidget.isSmallScreen(context);
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: [
          BackGround(
              smallScreen: smallScreen,
              screenHeight: screenHeight,
              screenWidth: screenWidth),
          Visibility(
            visible: smallScreen ? false : true,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: screenWidth / 1.5,
                height: screenHeight / 1.5,
                child: Image.asset(
                  "assets/car6.png",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 16, bottom: ResponsiveWidget.isSmallScreen(context)?0:ResponsiveWidget.isMediumScreen(context)?100:60),
              child: SizedBox(
                width: smallScreen ? screenWidth : screenWidth / 3,
                height: screenHeight / 3,
                child: const AutoSizeText(
                  "Experience automotive excellence with 15 years of expertise: assured superior quality, professional service, and unmatched satisfaction on every drive.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "DancingScript",
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: smallScreen ? true : false,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: screenWidth / 1,
                height: screenHeight / 1,
                child: Image.asset(
                  "assets/car6.png",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
