import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shiva_auto_service/Widgets/appbars/webbar.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

import '../../Helpers/responsive.helper.dart';

class WebBar extends StatefulWidget {
  const WebBar({super.key});

  @override
  State<WebBar> createState() => _WebBarState();
}

class _WebBarState extends State<WebBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 100),
      child: Container(
        color: Primary_light,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Logo.png"),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width:
                            ResponsiveWidget.isLargeScreen(context) ? 300 : 1),
                    Webtext(text: "Home"),
                    Webtext(text: "Services"),
                    Webtext(text: "About Us"),
                    Webtext(text: "Contact Us"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_home(context) {}
