import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class DecorationText extends StatelessWidget {
  DecorationText({
    Key? key,
    required this.screenWidth,
    required this.text,
  }) : super(key: key);

  final double screenWidth;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: SizedBox(
        width: ResponsiveWidget.isSmallScreen(context)
            ? screenWidth / 1.3
            : screenWidth / 2.5,
        child: AutoSizeText(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryColor,
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? screenWidth * 0.15
                : screenWidth * 0.045,
          ),
          maxLines: 2,
        ),
      ),
    );
  }
}
