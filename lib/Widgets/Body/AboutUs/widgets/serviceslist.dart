import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class ServicesList extends StatelessWidget {
  ServicesList({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  var style = const TextStyle(
      fontSize: 25, fontFamily: "PlayfairDisplay", fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    bool lagreScreen = ResponsiveWidget.isLargeScreen(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: lagreScreen ? screenWidth * 0.27 : screenWidth,
        height: screenHeight * 0.52,
        decoration: BoxDecoration(
          color: primaryLight,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AutoSizeText(
                "Services We Offer:",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.w800),
                maxLines: 1,
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Full Service",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Engine Overhaulingg",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Transmission",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "AC Cooling System",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Full Service",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Electrical Dent-Paint",
                  style: style,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: lagreScreen ? screenWidth * .25 : screenWidth,
                child: AutoSizeText(
                  "Accidental Repair",
                  style: style,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
