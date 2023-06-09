import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';
import 'contactus.text.dart';
import 'founderinfo.dart';
import 'contactus.description.dart';

class ContactUsDesktop extends StatelessWidget {
  const ContactUsDesktop({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DescriptionText(screenHeight: screenHeight, screenWidth: screenWidth),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FounderInfo(
              screenWidth: screenWidth,
              name: "Shiva Auto Service",
              phone: "+977 9765972477",
              mail: "shivaautoservicecenter1@gmail.com",
            ),
            FounderInfo(
              screenWidth: screenWidth,
              name: "Mr.Mohan Baral",
              phone: "+977 9841250071",
              mail: "abc@gmail.com",
            ),
            FounderInfo(
              screenWidth: screenWidth,
              name: "Mr.Bishnu Raya",
              phone: "+977 9841274678",
              mail: "abc@gmail.com",
            ),
            FounderInfo(
              screenWidth: screenWidth,
              name: "Maniram Karki",
              phone: "+977 ",
              mail: "abc@gmail.com",
            ),
          ],
        ),
      ],
    );
  }
}
