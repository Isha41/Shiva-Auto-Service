import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var style = TextStyle(
      color: primaryColor,
      fontFamily: "PlayfairDisplay",
      fontWeight: FontWeight.bold,
      fontSize: screenWidth * 0.028,
    );
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        color: Colors.white24,
        width: ResponsiveWidget.isSmallScreen(context)
            ? screenWidth
            : screenWidth / 2.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AutoSizeText(
                "Location",
                style: style,
              ),
              AutoSizeText(
                "Gokarneshowr-6,Sarweshor Gate",
                style: style,
              ),
              AutoSizeText(
                "Bagmati corridor,ktm.",
                style: style,
              )
            ],
          ),
        ),
      ),
    );
  }
}
