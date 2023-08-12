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
              CircleAvatar(
                backgroundColor: primaryColor,
                maxRadius: ResponsiveWidget.isLargeScreen(context)?0.035*screenWidth:50,
              ),
              CircleAvatar(
                backgroundColor: primaryColor,
                maxRadius: ResponsiveWidget.isLargeScreen(context)?0.035*screenWidth:50,
              ),
              CircleAvatar(
                backgroundColor: primaryColor,
                maxRadius: ResponsiveWidget.isLargeScreen(context)?0.035*screenWidth:50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
