import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class ServiceText extends StatelessWidget {
  const ServiceText({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
   bool largescreen = ResponsiveWidget.isLargeScreen(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: largescreen? screenWidth * 0.64:screenWidth,
        decoration: BoxDecoration(
          color: Primary_light,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AutoSizeText(
                'Experience exceptional service for Maruti Suzuki and Hyundai vehicles',
                style: TextStyle(
                    fontSize: 21.2,
                    fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.w800),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
