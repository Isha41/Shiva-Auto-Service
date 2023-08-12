import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

mobileAppBar(GlobalKey<ScaffoldState> key, context) => AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width:  MediaQuery.of(context).size.width/1.5,

        child: Image.asset(
          "assets/Logo1.png",
          fit: BoxFit.fill,
        ),
      ),
    ],
  ),
  centerTitle: true,
  backgroundColor: secondaryColor,
);
