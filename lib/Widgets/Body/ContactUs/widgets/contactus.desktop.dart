import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/location.dart';
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DescriptionText(
                screenHeight: screenHeight, screenWidth: screenWidth),
            SizedBox(
              height: screenHeight / 12,
            ),
            Address(
              x: 0.018,
              y: 30.0,
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.12),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FounderInfo(
              screenWidth: screenWidth,
              name: "Shiva Auto Service",
              phone: "+977 9765972477",
              mail: "shivaautoservicecenter1@gmail.com",
              photo: "assets/bg4.jpg",
            ),
            FounderInfo(
              screenWidth: screenWidth,
              name: "Mr.Mohan Baral",
              phone: "+977 9841250071",
              mail: "myc9803088354@gmail.com",
              photo: "assets/mohan.jpg",
            ),
            FounderInfo(
              screenWidth: screenWidth,
              name: "Mr.Bishnu Raya",
              phone: "+977 9841274678",
              mail: "...",
              photo: "assets/bishnu.jpg",
            ),
          ],
        ),
      ],
    );
  }
}
