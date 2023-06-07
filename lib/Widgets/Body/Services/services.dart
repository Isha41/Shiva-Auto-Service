import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/bg.image.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/widgets/carousel.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

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
            Hundaies(screenHeight: screenHeight),
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
                      const  CarouselText()
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

class Hundaies extends StatelessWidget {
  const Hundaies({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight / 3,
      child: Image.asset(
        "assets/hundaicars.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
