import 'package:flutter/material.dart';

mobileAppBar(GlobalKey<ScaffoldState> key, context) => AppBar(
      title: Container(
        color: Colors.black87,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/Logo1.png",
          fit: BoxFit.fill,
        ),
      ),
      backgroundColor: Colors.black87,
      centerTitle: true,
    );
