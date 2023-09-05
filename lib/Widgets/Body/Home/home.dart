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
              padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: ResponsiveWidget.isSmallScreen(context)
                      ? 0.5
                      : ResponsiveWidget.isMediumScreen(context)
                          ? 100
                          : 115),
              child: SizedBox(
                width: smallScreen ? screenWidth : screenWidth / 2.67,
                height: screenHeight / 3,
                child: Column(
                  children: [
                    const AutoSizeText(
                      "Experience automotive excellence with 15 years of expertise: assured superior quality, professional service, and unmatched satisfaction on every drive.",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "DancingScript",
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: smallScreen ? screenHeight / 50 : 0,
                    ),
                    Address(
                      x: 0.0001,
                      y: 2.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: smallScreen ? true : false,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight ,
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
