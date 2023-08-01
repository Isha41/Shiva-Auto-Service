import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/aboutus.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/contactus.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/home.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/services.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var pages = [
    const Home(),
    const Services(),
    const AboutUs(),
    const ContactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return pages[0];
  }
}
