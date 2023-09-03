import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/bg.image.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/carousel.car.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/carousel.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class ScreenMobile extends StatelessWidget {
  const ScreenMobile({
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ServicesBG(
            smallScreen: smallScreen,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      color: primaryLight,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: AutoSizeText(
                        "Services  Provided",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "PlayfairDisplay",
                            fontWeight: FontWeight.w800),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth,
                    child: const CarouselText(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: screenWidth,
            child: const CarouselCar(),
          )
        ],
      ),
    );
  }
}
