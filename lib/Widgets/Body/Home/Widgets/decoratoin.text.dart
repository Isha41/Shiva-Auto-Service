import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';

class DecorationText extends StatelessWidget {
  const DecorationText({super.key, 
    required this.smallScreen,
    required this.text,
    required this.color,
  });

  final bool smallScreen;
  final dynamic color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
          fontFamily: "PlayfairDisplay",
          fontWeight: FontWeight.w800,
          fontSize: smallScreen ? 35 : ResponsiveWidget.isMediumScreen(context)?45:60,
          color: color),
    );
  }
}