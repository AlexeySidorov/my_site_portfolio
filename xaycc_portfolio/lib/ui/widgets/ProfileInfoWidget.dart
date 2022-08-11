import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.15,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.transparent,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("images/avatar.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  profileData(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            "Всем привет! Меня зовут Алексей, я",
            textAlign: ResponsiveWidget.isSmallScreen(context)
                ? TextAlign.center
                : TextAlign.left,
            textScaleFactor: 2,
            style: TextStyle(
              color: Colors.orange,
              fontFamily: "RobotoRegular",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            "MOBILE DEVELOPER",
            textAlign: ResponsiveWidget.isSmallScreen(context)
                ? TextAlign.center
                : TextAlign.left,
            textScaleFactor: 3,
            style: TextStyle(
                color: Colors.orange,
                fontFamily: "KidCraft",
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 24 : 72),
          ),
          SizedBox(
            height: 30,
          ),
          /*SizedBox(
        height: 20,
      ),
      Row(
        children: [SkillWidget()],
      )*/
        ],
      );

  Widget getSmallMediumWidgets(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          /* SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),*/
          profileData(context),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[profileImage(context), profileData(context)],
        ),
        customMediumScreen: getSmallMediumWidgets(context),
        mediumScreen: getSmallMediumWidgets(context),
        smallScreen: getSmallMediumWidgets(context));
  }
}
