import 'package:flutter/material.dart';
import 'package:shiva_auto_service/Helpers/responsive.helper.dart';
import 'package:shiva_auto_service/Widgets/appbars/appbar.drawer.dart';
import 'package:shiva_auto_service/Widgets/appbars/desktop.appbar.dart';
import 'package:shiva_auto_service/Widgets/appbars/mobile.appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldkey,
      appBar: ResponsiveWidget.isLargeScreen(context) ? PreferredSize(
        preferredSize: Size(screenSize.width, 90),
        child:  WebBar() 
      ): mobileAppBar(scaffoldkey),

      drawer: const Open_Drawer(),
    );
  }
}


