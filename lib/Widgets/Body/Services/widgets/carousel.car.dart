import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CarouselCar extends StatefulWidget {
  const CarouselCar({super.key});

  @override
  State<CarouselCar> createState() => _CarouselCarState();
}

class _CarouselCarState extends State<CarouselCar> {
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

    return  SizedBox(
      height: screenHeight / 2.5,
      child: CarouselSlider(
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          autoPlay: true,
          reverse: false,
          pauseAutoPlayOnTouch: true,
          autoPlayInterval: const Duration(seconds: 1),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
        items: carItems.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width/3,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
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

