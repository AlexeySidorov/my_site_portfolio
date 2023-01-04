import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isLargeScreen(context)
            ? MediaQuery.of(context).size.width * 0.15
            : MediaQuery.of(context).size.height * 0.2,
        width: ResponsiveWidget.isLargeScreen(context)
            ? MediaQuery.of(context).size.width * 0.15
            : MediaQuery.of(context).size.height * 0.2,
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
        margin: EdgeInsets.fromLTRB(0, 0, isLargeScreen(context) ? 70 : 0, 0),
      );

  double getTitleFontSize(context) {
    if (ResponsiveWidget.isSmallScreen(context)) return 24;
    if (ResponsiveWidget.isMediumScreen(context))
      return 32;
    else
      return 62;
  }

  Widget profileImageWidget(context) {
    if (ResponsiveWidget.isMediumScreen(context))
      return Container(
          width: double.infinity, child: Center(child: profileImage(context)));
    else
      return profileImage(context);
  }

  bool isLargeScreen(context) {
    if (ResponsiveWidget.isLargeScreen(context))
      return true;
    else
      return false;
  }

  profileData(context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            "Всем привет! Меня зовут Алексей, я",
            textAlign: TextAlign.center,
            textScaleFactor: 2,
            style: TextStyle(
              color: Colors.orange,
              fontFamily: "TerminatorGenisys",
            ),
          ),
          SizedBox(
            height: isLargeScreen(context)
                ? 0
                : MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            "MOBILE DEVELOPER",
            textAlign: TextAlign.center,
            textScaleFactor: 3,
            style: TextStyle(
                color: Colors.orange,
                fontFamily: "KidCraft",
                fontSize: getTitleFontSize(context)),
          ),
          SizedBox(
            height: isLargeScreen(context) ? 30 : 15,
          )
        ],
      );

  Widget getSmallMediumWidgets(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImageWidget(context),
          profileData(context),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return getSmallMediumWidgets(context);
  }
}
