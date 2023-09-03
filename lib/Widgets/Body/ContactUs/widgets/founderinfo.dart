import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class FounderInfo extends StatelessWidget {
  const FounderInfo({
    Key? key,
    required this.screenWidth,
    required this.name,
    required this.phone,
    required this.mail,
    required this.photo,
  }) : super(key: key);

  final double screenWidth;
  final String name, phone, mail, photo;

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      color: primaryColor,
      fontFamily: "PlayfairDisplay",
      fontWeight: FontWeight.bold,
      fontSize: screenWidth * 0.016,
    );
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(photo),
            maxRadius: screenWidth * 0.045,
          ),
        ),
        SizedBox(
          width: 0.01 * screenWidth,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              name,
              style: style,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: screenWidth * 0.015,
                  color: primaryColor,
                ),
                const SizedBox(width: 10),
                AutoSizeText(
                  phone,
                  style: style,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  size: screenWidth * 0.015,
                  color: primaryColor,
                ),
                const SizedBox(width: 10),
                AutoSizeText(
                  mail,
                  style: style,
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
