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
    double screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      items: textItems
          .map((item) => Container(
            height: 50,
                child: Center(
                    child: AutoSizeText(
                  "$item",
                  style: TextStyle(
                      color: Primary_color,
                      fontFamily: "PlayfairDisplay",
                      fontWeight: FontWeight.bold,
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 16 : 40),
                )),
              ))
          .toList(),
      options: CarouselOptions(
        
        viewportFraction: 0.6,
        initialPage: 1,
        enableInfiniteScroll: true,
        height:screenHeight/2.5,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(milliseconds: 40),
        autoPlayAnimationDuration: Duration(milliseconds: 200),
        autoPlayCurve: Curves.bounceInOut,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
