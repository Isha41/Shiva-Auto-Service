import 'dart:developer';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/aboutus.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/contactus.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/home.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/services.dart';
import 'package:shiva_auto_service/allnavigations.dart';
import 'package:shiva_auto_service/homePage.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          SplashScreen());

  static Handler sercivesHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
           LandingPage(page: params['name'][0]));

  // static Handler contactHandler = Handler(
  //     handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
  //         ContactUs());

  // static Handler AboutHandler = Handler(
  //     handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
  //         AboutUs());

  static void setupRouter() {
    router.define(
      '/',
      handler: homeHandler,
    );
    router.define(
      '/:name',
      handler: sercivesHandler,
      transitionType: TransitionType.fadeIn,
    );

    // router.define(
    //   '/about_us',
    //   handler: AboutHandler,
    //   transitionType: TransitionType.fadeIn,
    // );

    // router.define(
    //   '/contact_us',
    //   handler: contactHandler,
    //   transitionType: TransitionType.fadeIn,
    // );
  }
}
