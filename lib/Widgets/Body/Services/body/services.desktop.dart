import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/bg.image.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/carousel.car.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/carousel.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class ScreensDesktop extends StatelessWidget {
  const ScreensDesktop({
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ServicesBG(
          smallScreen: smallScreen,
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
        Column(
          children: [
            SizedBox(
              height: screenHeight / 3,
              child: const CarouselCar(),
            ),
            Container(
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      color: primaryLight,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        "Services  Provided",
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: "PlayfairDisplay",
                            fontWeight: FontWeight.w800),
                        maxLines: 1,
                      ),
                    ),
                  ),
            SizedBox(
              height: screenHeight / 3,
              width: screenWidth / 2.5,
              child: const CarouselText(),
            )
          ],
        ),
      ],
    );
  }
}
