import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

 mobileAppBar(GlobalKey<ScaffoldState> key) => AppBar(
  leading: IconButton(icon: Icon(Icons.menu, color: Primary_light,), onPressed: (){
      key.currentState!.openDrawer();
    },),
  title:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset("assets/Logo.png",height:60,width: 60,),
      const Text("Shiva Auto Services"),
      const SizedBox(width: 30)
    ],
  ),
  centerTitle: true,
  elevation: 2,
  backgroundColor: Secondary_color,
);

