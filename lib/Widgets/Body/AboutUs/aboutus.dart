import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Bg3.png"), fit: BoxFit.fill)),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.all(34),
                child: Container(
                  width: screenWidth * 0.64,
                  decoration: BoxDecoration(
                    color: Primary_light,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      'Experience exceptional service for Maruti Suzuki and Hyundai vehicles',
                      style: TextStyle(
                          fontSize: 21.2,
                          fontFamily: "PlayfairDisplay",
                          fontWeight: FontWeight.w800),
                      maxLines: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
