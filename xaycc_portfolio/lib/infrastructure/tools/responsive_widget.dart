import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? customMediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget(
      {Key? key,
      @required this.largeScreen,
      this.mediumScreen,
      this.customMediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isCustomMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 985;
  }

  Widget getLargeScreen() {
    return largeScreen as Widget;
  }

  Widget getCustomMediumScreen() {
    return customMediumScreen as Widget;
  }

  Widget getMediumScreen() {
    return mediumScreen as Widget;
  }

  Widget getSmallScreen() {
    return smallScreen as Widget;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return getLargeScreen();
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          if (constraints.maxWidth <= 985) {
            if (customMediumScreen == null || mediumScreen == null)
              return Container();
            else if (customMediumScreen != null)
              return getCustomMediumScreen();
            else
              return getMediumScreen();
          } else {
            if (mediumScreen != null)
              return getMediumScreen();
            else
              return getSmallScreen();
          }
        } else {
          if (smallScreen != null)
            return getSmallScreen();
          else
            return getLargeScreen();
        }
      },
    );
  }
}
