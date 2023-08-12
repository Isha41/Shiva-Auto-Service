import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/appbars/webbar.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryLight,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Shiva Auto Service",
                    style: TextStyle(
                        fontFamily: dancingScript,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Icon(Icons.home),
                      SizedBox(width: 12),
                      Webtext(
                        text: "Home",
                        route: "home",
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.car_repair),
                      SizedBox(width: 12),
                      Webtext(text: "Services", route: "services"),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(width: 12),
                      Webtext(
                        text: "About Us",
                        route: "about_us",
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 12),
                      Webtext(
                        text: "Contact US",
                        route: "contact_us",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text("Copyrights "),
                    Icon(Icons.copyright),
                    Text(" | Shiva Auto Services"),
                  ],
                ),
                const SizedBox(height: 20)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
