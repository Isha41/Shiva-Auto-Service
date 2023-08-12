import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';


class MainText extends StatelessWidget {
  const MainText({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    bool lagreScreen = ResponsiveWidget.isLargeScreen(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: lagreScreen? screenWidth * 0.64 : screenWidth,
        height: screenHeight * 0.65,
        decoration: BoxDecoration(
          color: primaryLight,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: AutoSizeText(
            "Welcome to Shiva Auto Service, the trusted destination for expert car care. Our experienced professionals are dedicated to serving Maruti Suzuki and Hyundai vehicles with unmatched precision and care. With over 20 years of experience and 15 years of proven expertise, we guarantee exceptional service and complete fulfillment.\n\nAt Shiva Auto Service, we understand the unique needs of Maruti Suzuki and Hyundai cars. Our skilled staff is extensively trained to handle all your maintenance and repair requirements. With our advanced facility and determined commitment, your vehicle will receive the supreme attention and top-quality service it deserves.\n\nDiscover the difference at Shiva Auto Service, where expertise and exceptional service come together seamlessly. We are excited to serve you and your car, providing reliable care and ensuring your absolute satisfaction. Join us on this remarkable journey as we strive to deliver exceptional care and service to Maruti Suzuki and Hyundai car owners in the area. Let's build a lasting partnership based on trust, reliability, and a shared passion for automotive excellence.",
            style: TextStyle(
                fontSize: 21.2,
                fontFamily: "PlayfairDisplay",
                fontWeight: FontWeight.w800),
            // maxLines: 1,
          ),
        ),
      ),
    );
  }
}