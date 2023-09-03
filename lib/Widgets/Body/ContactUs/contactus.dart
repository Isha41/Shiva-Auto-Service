import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/contactus.desktop.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/widgets/contactus.mobile.dart';
import '../../../Helpers/responsive.helper.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/Bg7.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      height: screenHeight,
      width: screenWidth,
      child: ResponsiveWidget.isSmallScreen(context)
          ? ContactUsMobile(
              screenWidth: screenWidth, screenHeight: screenHeight)
          : ContactUsDesktop(
              screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
