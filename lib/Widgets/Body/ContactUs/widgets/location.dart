import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Address extends StatefulWidget {
  const Address({super.key, required this.x, required this.y});
  final double x;
  final double y;

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
      fontSize: screenWidth * widget.x,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: ResponsiveWidget.isSmallScreen(context)
            ? screenWidth
            : screenWidth / 2.3,
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              AutoSizeText(
                "Location :",
                style: style,
              ),
              AutoSizeText(
                "Gokarneshowr-6,Sarweshor Gate",
                style: style,
              ),
              AutoSizeText(
                "Bagmati Corridor,Kathmandu",
                style: style,
              )
            ],
          ),
        ),
      ),
    );
  }
}
