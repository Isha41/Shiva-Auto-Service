import 'package:flutter/material.dart';
import 'package:shiva_auto_service/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shiva Auto Services',
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

