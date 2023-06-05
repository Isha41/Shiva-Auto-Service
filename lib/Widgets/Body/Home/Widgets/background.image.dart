import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/Widgets/description.text.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
    required this.smallScreen,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final bool smallScreen;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: smallScreen ?  screenHeight / 3:screenHeight / 2 ,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/Bg1.png",
                  ),
                  fit: BoxFit.fill),
            ),
           child: DescriptionText(smallScreen: smallScreen),
          ),
        ),
      ],
    );
  }
}