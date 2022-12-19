import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import "dart:js" as js;
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
import 'package:xaycc_portfolio/ui/widgets/FooterWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/MainHeaderWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/NavButtonWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/PortfolioWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/ProfileInfoWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/SkillWidget.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double getGalleryContainerHeight(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) return 525;
    if (ResponsiveWidget.isMediumScreen(context)) return 500;
    if (ResponsiveWidget.isSmallScreen(context)) return 880;

    return 1;
  }

  @override
  Widget build(BuildContext context) {
    var menuButtonPadding = ResponsiveWidget.isSmallScreen(context) ||
            ResponsiveWidget.isMediumScreen(context)
        ? EdgeInsets.zero
        : EdgeInsets.fromLTRB(32, 0, 32, 0);

    List<Widget> navButtons() => [
          NavButtonWidget(
              padding: menuButtonPadding,
              text: "Код на GitHub",
              onPressed: () => js.context
                  .callMethod('open', ['https://github.com/AlexeySidorov']))
        ];

    double marginTop = ResponsiveWidget.isLargeScreen(context) ? 0 : 0.05;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            )
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? Drawer(
              elevation: 10,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: navButtons(),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height * 0.1,
              MediaQuery.of(context).size.height * 0.01,
              MediaQuery.of(context).size.height * 0.1,
              0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavHeaderWidget(navButtons: navButtons()),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ProfileInfoWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * marginTop,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SkillWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              PortfolioWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
