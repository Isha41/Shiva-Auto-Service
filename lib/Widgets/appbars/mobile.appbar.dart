import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

 mobileAppBar(GlobalKey<ScaffoldState> key) => AppBar(
  leading: IconButton(icon: Icon(Icons.menu, color: Primary_light,), onPressed: (){
      key.currentState!.openDrawer();
    },),
  title:Text("Shiva Auto Services"),
  centerTitle: true,
  elevation: 0,
  backgroundColor: Secondary_color,
);
