import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Widgets/appbars/webbar.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Open_Drawer extends StatelessWidget {
  const Open_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Primary_light,
      width: 250,
      child:  Padding(
        padding: const EdgeInsets.only(top:16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(""),
                  Webtext(text: "Services"),
                  Webtext(text: "About Us"),
                 Webtext(text: "Contact Us"),
          ],
        ),
      ),
    );
  }
}