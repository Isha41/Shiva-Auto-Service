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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CarouselCar(),
              Expanded(
                child: Padding(
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
                            color: Primary_light,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: const [
                              Padding(
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
                            ],
                          ),
                        ),
                        const CarouselText()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
