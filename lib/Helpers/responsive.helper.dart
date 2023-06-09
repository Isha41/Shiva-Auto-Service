import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 550;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 550 &&
        MediaQuery.of(context).size.width <= 1000;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        double maxWidth = Constraints.maxWidth;
        if (maxWidth > 1000) {
          return largeScreen;
        } else if (maxWidth >= 550 && maxWidth <= 1000) {
          return mediumScreen
           ?? largeScreen;
        } else {
          return smallScreen
          ?? largeScreen;
        }
      },
    );
  }
}
