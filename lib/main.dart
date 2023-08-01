import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shiva_auto_service/Helpers/Navigator/Navigator.dart';
import 'package:shiva_auto_service/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      title: 'Shiva Auto Services',
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
   );
  }
}


