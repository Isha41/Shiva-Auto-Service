import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shiva_auto_service/Widgets/appbars/webbar.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Primary_light,
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
                        fontFamily: DancingScript,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children:  [
                   const   Icon(Icons.car_repair),
                      const SizedBox(width: 12),
                      Webtext(text: "Services",path: "/services",),
                    ],
                  ),
                  Row(
                    children:  [
                      const Icon(Icons.person),
                      const SizedBox(width: 12),
                      GestureDetector(
                      onTap: () => context.go("/about-us"),  
                        child: Webtext(text: "About Us",path: "/about-us",)),
                    ],
                  ),
                  Row(
                    children:  [
                      const Icon(Icons.phone),
                      const SizedBox(width: 12),
                      Webtext(text: "Contact US",path: "/contact-us",),
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
