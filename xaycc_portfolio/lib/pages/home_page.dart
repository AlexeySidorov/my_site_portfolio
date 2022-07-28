import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import "dart:js" as js;
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
import 'package:xaycc_portfolio/ui/widgets/MainHeaderWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/NavButtonWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/ProfileInfoWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/SocialInfoWidget.dart';

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
    /*List<Widget> navTopButtons() => [
          NavContactButtonWidget(
              icon: Icons.phone,
              text: Const.phone,
              textColor: Colors.white,
              padding: ResponsiveWidget.isSmallScreen(context)
                  ? EdgeInsets.fromLTRB(0, 0, 0, 0)
                  : EdgeInsets.fromLTRB(0, 0, 24, 0),
              onPressed: () => launch("tel:${Const.phone}")),
          NavContactButtonWidget(
              icon: Icons.email_outlined,
              text: Const.email,
              textColor: Colors.white,
              onPressed: () => launch("mailto:${Const.email}")),
        ];*/

    var menuButtonPadding = ResponsiveWidget.isSmallScreen(context) ||
            ResponsiveWidget.isMediumScreen(context)
        ? EdgeInsets.zero
        : EdgeInsets.fromLTRB(32, 0, 32, 0);

    List<Widget> navButtons() => [
          /* NavButtonWidget(
              text: "Навыки",
              padding: menuButtonPadding,
              onPressed: () => js.context.callMethod('open', [
                    'https://ekaterinburg.hh.ru/resume/e5fb3e7eff0247e6ae0039ed1f416a73733657'
                  ])),
          NavButtonWidget(
              padding: menuButtonPadding,
              text: "Портфолио",
              onPressed: () => js.context
                  .callMethod('open', ['https://github.com/AlexeySidorov'])),
          NavButtonWidget(
              padding: menuButtonPadding,
              text: "Контакты",
              onPressed: () => js.context
                  .callMethod('open', ['https://github.com/AlexeySidorov'])),*/
          NavButtonWidget(
              padding: menuButtonPadding,
              text: "GitHub",
              onPressed: () => js.context
                  .callMethod('open', ['https://github.com/AlexeySidorov']))
        ];

    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ResponsiveWidget.isSmallScreen(context)
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
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeaderWidget(navButtons: navButtons()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfoWidget(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  /* Container(
                    child: GalleryWidget(),
                    width: 1500,
                    height: getGalleryContainerHeight(context),
                    color: Colors.red,
                  ),*/
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  SocialInfoWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
