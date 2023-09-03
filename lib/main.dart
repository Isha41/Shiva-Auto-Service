import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/Navigator/routers.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
    void initState() {
      super.initState();
      Flurorouter.setupRouter();
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}