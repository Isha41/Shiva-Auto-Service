import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Founders extends StatelessWidget {
  const Founders({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
        color: Colors.white,
        fontFamily: "PlayfairDisplay",
        fontWeight: FontWeight.bold,
        fontSize: ResponsiveWidget.isSmallScreen(context)
            ? screenWidth * 0.015
            : screenWidth * 0.015);
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: AutoSizeText(
              "Founders",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "PlayfairDisplay",
                  fontSize: 32),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/mohan.jpg"),
                    maxRadius: ResponsiveWidget.isLargeScreen(context)
                        ? 0.035 * screenWidth
                        : 50,
                  ),
                  AutoSizeText(
                    "Mr.Mohan Baral",
                    style: style,
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/bishnu.jpg"),
                    maxRadius: ResponsiveWidget.isLargeScreen(context)
                        ? 0.035 * screenWidth
                        : 50,
                  ),
                  AutoSizeText(
                    "Mr.Bishnu Raya",
                    style: style,
                  ),
                ],
              ),
              // CircleAvatar(
              //   backgroundColor: primaryColor,
              //   maxRadius: ResponsiveWidget.isLargeScreen(context)?0.035*screenWidth:50,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
