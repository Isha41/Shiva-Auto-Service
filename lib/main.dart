import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/Navigator/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

// now we have to initialise the router....

// thats it...all things are done now i think... :)
