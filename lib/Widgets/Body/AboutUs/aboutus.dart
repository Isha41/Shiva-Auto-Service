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
              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  width: screenWidth * 0.64,
                  decoration: BoxDecoration(
                    color: Primary_light,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 34, left: 34, right: 34),
                child: Container(
                  width: screenWidth * 0.64,
                  height: screenHeight * 0.65,
                  decoration: BoxDecoration(
                    color: Primary_light,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
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
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 34, right: 34, bottom: 34, left: 20),
                child: Container(
                  width: screenWidth * 0.27,
                  height: screenHeight * 0.52,
                  decoration: BoxDecoration(
                    color: Primary_light,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Services We Offer:",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "PlayfairDisplay",
                        fontWeight: FontWeight.bold),
                  ),
                  AutoSizeText("Full Service"),
                  AutoSizeText("Engine Overhaulingg"),
                  AutoSizeText("Transmission"),
                  AutoSizeText("AC Cooling System"),
                  AutoSizeText("Suspension"),
                  AutoSizeText("Electrical Dent-Paint"),
                  AutoSizeText("FAccidental Repair"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
