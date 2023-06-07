import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/constants/style.dart';

class CarouselCar extends StatefulWidget {
  const CarouselCar({super.key});

  @override
  State<CarouselCar> createState() => _CarouselCarState();
}

class _CarouselCarState extends State<CarouselCar> {
  final List<int> items = [1, 2, 3, 4, 5, 6];
  final List<String> carItems = [
    "assets/car1.png",
    "assets/car2.png",
    "assets/car3.png",
    "assets/car4.png",
    "assets/car5.png",
    "assets/car6.png",
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight / 2.5,
      child: CarouselSlider(
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          // aspectRatio: 16 / 9,
          // viewportFraction: 1,
          autoPlay: true,
          reverse: false,
          autoPlayInterval: Duration(seconds: 1),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
        items: carItems.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

// class Hundaies extends StatelessWidget {
//   const Hundaies({
//     Key? key,
//     required this.screenHeight,
//   }) : super(key: key);

//   final double screenHeight;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: screenHeight / 3,
//       child: Image.asset(
//         "assets/car1.png",
//         fit: BoxFit.fill,
//       ),
//     );
//   }
// }
