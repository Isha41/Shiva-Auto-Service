import 'package:flutter/material.dart';

import 'founderinfo.dart';

class FoundersInfo extends StatelessWidget {
  const FoundersInfo({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
