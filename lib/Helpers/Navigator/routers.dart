import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/splashscreen.dart';
import 'package:shiva_auto_service/homepage.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
         const SplashScreen());

  static Handler sercivesHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
           HomePage(page: params['name'][0]));

  static void setupRouter() {
    router.define(
      '/',
      handler: homeHandler,
    );
    router.define(
      '/:name',
      handler: sercivesHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(seconds: 1),
    );
  }
}
