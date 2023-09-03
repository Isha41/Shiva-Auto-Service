import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/home');
    });
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Image.asset(
              "assets/splash.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.07),
                SizedBox(
                  width: screenWidth / 3,
                  height: screenHeight * 0.08,
                  child: const AutoSizeText(
                    "Welcome To",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                        fontFamily: "PlayfairDisplay"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
