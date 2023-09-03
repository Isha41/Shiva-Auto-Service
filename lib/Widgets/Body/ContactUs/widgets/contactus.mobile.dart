import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/founderinfo.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/location.dart';
import 'contactus.description.dart';

class ContactUsMobile extends StatelessWidget {
  const ContactUsMobile({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DescriptionText(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
        FounderInfo(
          screenWidth: screenWidth,
          name: "Shiva Auto Service",
          phone: "+977 9765972477",
          mail: "shivaautoservicecenter1@gmail.com",
          photo: "assets/bg4.jpg",
        ),
        Row(
          children: [
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
              mail: "abc@gmail.com",
              photo: "assets/bishnu.jpg",
            ),
          ],
        ),
        Address()
      ],
    );
  }
}
