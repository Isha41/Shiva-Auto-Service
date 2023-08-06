import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/Body/AboutUs/aboutus.dart';
import 'package:shiva_auto_service/Widgets/Body/ContactUs/contactus.dart';
import 'package:shiva_auto_service/Widgets/Body/Home/home.dart';
import 'package:shiva_auto_service/Widgets/Body/Services/services.dart';
import 'package:shiva_auto_service/Widgets/appbars/appbar.drawer.dart';
import 'package:shiva_auto_service/Widgets/appbars/mobile.appbar.dart';
import 'package:shiva_auto_service/Widgets/appbars/webbar.text.dart';
import 'package:shiva_auto_service/constants/style.dart';

class LandingPage extends StatefulWidget {
  final String page;

  const LandingPage({
    Key? key,
    required this.page,
  }) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
List<String> pages = [
  'home',
  'services',
  'about_us',
  'contact_us',
];

List<String> tabbottons = [
  'Home',
  'Services',
  'About Us',
  'Contact Us',
];


class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? mobileAppBar(scaffoldkey)
          : null,
      drawer: const OpenDrawer(),
      backgroundColor: const Color(0xffBFBFCF),
      body: ResponsiveWidget.isSmallScreen(context)
          ? Container(

          )
          : ListView(
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: tabbottons.map((e) {
                      return NavItem(
                        selected:
                            tabbottons.indexOf(e) == pages.indexOf(widget.page),
                        text: e,
                        onTap: () {
                          if (tabbottons.indexOf(e) == 0) {
                            Navigator.pushNamed(
                                context, '/${pages[tabbottons.indexOf(e)]}');
                          } else {
                            Navigator.pushNamed(
                                context, '/${pages[tabbottons.indexOf(e)]}');
                          }
                        },
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  child: IndexedStack(
                    index: pages.indexOf(widget.page),
                    children: const [
                      Home(),
                      Services(),
                      AboutUs(),
                      ContactUs(),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class NavItem extends StatefulWidget {
  final String text;
  final bool selected;
  final Function onTap;

  const NavItem(
      {Key? key,
      required this.selected,
      required this.onTap,
      required this.text})
      : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  final List _isHovering = [
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        onHover: (value) {
          setState(() {
            value ? _isHovering[0] = true : _isHovering[0] = false;
          });
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 375),
            height: 60.0,
            color: widget.selected ? Primary_light : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                  child: Text(
                widget.text,
                style: TextStyle(
                    color: _isHovering[0] ? Orange : Primary_color,
                    fontSize: 18,
                    fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.bold),
              )),
            )),
      ),
    );
  }
}
