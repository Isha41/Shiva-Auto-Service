import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class CarouselText extends StatefulWidget {
  const CarouselText({super.key});

  @override
  State<CarouselText> createState() => _CarouselTextState();
}

class _CarouselTextState extends State<CarouselText> {
  final List<String> textItems = [
    "Full Services",
    "Engine Overhauling",
    "Transmission",
    "A/C  Cooling System",
    "Repair",
    "Suspension",
    "Electrical Dent-Paint",
    "Accidental Repair"
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
      items: textItems
          .map((item) => SizedBox(
                height: 50,
                child: Center(
                    child: AutoSizeText(
                  item,
                  style: TextStyle(
                      color: primaryColor,
                      fontFamily: "PlayfairDisplay",
                      fontWeight: FontWeight.bold,
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 30 : 40),
                )),
              ))
          .toList(),
      options: CarouselOptions(
        viewportFraction: 0.5,
        initialPage: 2,
        enableInfiniteScroll: true,
        height: screenHeight / 3,
        reverse: false,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
        autoPlayInterval: const Duration(milliseconds: 30),
        autoPlayAnimationDuration: const Duration(milliseconds: 200),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
