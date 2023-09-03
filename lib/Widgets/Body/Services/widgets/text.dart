// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DecorationText extends StatelessWidget {
  DecorationText({
    Key? key,
    required this.smallScreen,
    required this.screenWidth,
    required this.text,
  }) : super(key: key);

  final bool smallScreen;
  final double screenWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: SizedBox(
        width: smallScreen ? screenWidth : screenWidth / 2.5,
        child: AutoSizeText(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: smallScreen ? 24 : 45,
          ),
          maxLines: 2,
        ),
      ),
    );
  }
}
