import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/aboutus.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/contactus.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/home.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/services.dart';
import 'package:shiva_auto_service/homePage.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: "/",
          pageBuilder: ((context, state) {
            return const MaterialPage(child: HomePage());
          })),
      GoRoute(
        path: "/home",
        name: "home",
        
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        name: "services",
        path: "/services",
        builder: (context, state) => const Services(),
      ),
      GoRoute(
        path: "/about-us",
        name: "about-us",
        builder: (context, state) => const AboutUs(),
      ),
      GoRoute(
        name: "contact-us",
        path: "/contact-us",
        builder: (context, state) => const ContactUs(),
      ),
    ],
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
