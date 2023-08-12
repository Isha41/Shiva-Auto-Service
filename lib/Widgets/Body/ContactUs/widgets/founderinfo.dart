import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';

class FounderInfo extends StatelessWidget {
  const FounderInfo({
    Key? key,
    required this.screenWidth,
    required this.name,
    required this.phone,
    required this.mail,
    required this.photo,
  }) : super(key: key);

  final double screenWidth;
  final String name, phone, mail, photo;

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
        color: primaryColor,
        fontFamily: "PlayfairDisplay",
        fontWeight: FontWeight.bold,
        fontSize: ResponsiveWidget.isSmallScreen(context)
            ? screenWidth * 0.015
            : screenWidth * 0.015);
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(this.photo),
              maxRadius: screenWidth * 0.045,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.0001,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                name,
                style: style,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: screenWidth * 0.015,
                    color: primaryColor,
                  ),
                  const SizedBox(width: 10),
                  AutoSizeText(
                    phone,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? screenWidth * 0.013
                            : screenWidth * 0.013),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    size: screenWidth * 0.015,
                    color: primaryColor,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    constraints: BoxConstraints(maxWidth: screenWidth / 3),
                    child: AutoSizeText(
                      mail,
                      style: style,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
