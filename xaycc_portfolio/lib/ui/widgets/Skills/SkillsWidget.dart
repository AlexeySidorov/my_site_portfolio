import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
import 'package:xaycc_portfolio/ui/widgets/Skills/SkillWidget.dart';
import 'package:xaycc_portfolio/ui/widgets/TitleSubtitleWidget.dart';

class SkillsWidget extends StatefulWidget {
  @override
  SkillsWidgetState createState() => SkillsWidgetState();
}

class SkillsWidgetState extends State<SkillsWidget> {
  double getTitleFontSize(context) {
    if (ResponsiveWidget.isSmallScreen(context))
      return 14;
    else if (ResponsiveWidget.isMediumScreen(context))
      return 18;
    else
      return 32;
  }

  double getSubTitleFontSize(context) {
    if (ResponsiveWidget.isSmallScreen(context))
      return 12;
    else if (ResponsiveWidget.isMediumScreen(context))
      return 18;
    else
      return 24;
  }

  Widget getSkillOneWidgets(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context))
      return getSkillWidgetsBySmallScreen(context);
    if (ResponsiveWidget.isMediumScreen(context))
      return getSkillWidgetsOneByMediumScreen(context);
    else
      return getSkillWidgetsOneByLargeScreen(context);
  }

  Widget getSkillTwoWidgets(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) return Container();
    if (ResponsiveWidget.isMediumScreen(context))
      return getSkillWidgetsTwoByMediumScreen(context);
    else
      return getSkillWidgetsTwoByLargeScreen(context);
  }

  Widget getSkillThreeWidgets(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context))
      return getSkillWidgetsThreeByMediumScreen(context);

    return Container();
  }

  Widget getSkillWidgetsOneByLargeScreen(BuildContext context) {
    return Container(
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: SkillWidget(
                    iconName: "csharp_icon.png", text: "asdasdasd")),
            Flexible(
                child: SkillWidget(
                    iconName: "xamarin_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "java_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "kotlin_icon.png", text: "asdasdasd"))
          ],
        ));
  }

  Widget getSkillWidgetsTwoByLargeScreen(BuildContext context) {
    return Container(
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child:
                    SkillWidget(iconName: "swift_icon.png", text: "asdasdasd")),
            Flexible(
                child: SkillWidget(
                    iconName: "flutter_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "sql_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "icon_github.png", text: "asdasdasd"))
          ],
        ));
  }

  Widget getSkillWidgetsOneByMediumScreen(BuildContext context) {
    return Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: SkillWidget(
                    iconName: "csharp_icon.png", text: "asdasdasd")),
            Flexible(
                child: SkillWidget(
                    iconName: "xamarin_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "java_icon.png", text: "asdasdasd")),
          ],
        ));
  }

  Widget getSkillWidgetsTwoByMediumScreen(BuildContext context) {
    return Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: SkillWidget(
                    iconName: "kotlin_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "swift_icon.png", text: "asdasdasd")),
            Flexible(
                child: SkillWidget(
                    iconName: "flutter_icon.png", text: "asdasdasd")),
          ],
        ));
  }

  Widget getSkillWidgetsThreeByMediumScreen(BuildContext context) {
    return Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child:
                    SkillWidget(iconName: "sql_icon.png", text: "asdasdasd")),
            Flexible(
                child:
                    SkillWidget(iconName: "icon_github.png", text: "asdasdasd"))
          ],
        ));
  }

  Widget getSkillWidgetsBySmallScreen(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          SkillWidget(iconName: "csharp_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "xamarin_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "java_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "kotlin_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "swift_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "flutter_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "sql_icon.png", text: "asdasdasd"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SkillWidget(iconName: "icon_github.png", text: "asdasdasd")
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: TitleSubTitleWidget(
              title: "ЧТО Я ИСПОЛЬЗУЮ В РАБОТЕ",
              subTitle: "НАВЫКИ",
              titleFonSize: getTitleFontSize(context),
              subTitleFonSize: getSubTitleFontSize(context),
              titleScaleFactor: 2,
              subTitleScaleFactor: 1.5,
              titleFontWeight: FontWeight.bold,
              subTitleFontWeight: FontWeight.bold,
              fontFamily: "TerminatorGenisys",
              titleTextAlign: !ResponsiveWidget.isSmallScreen(context)
                  ? TextAlign.left
                  : TextAlign.center,
              subTitleTextAlign: !ResponsiveWidget.isSmallScreen(context)
                  ? TextAlign.left
                  : TextAlign.center,
              titleTextColor: Colors.grey.shade800,
              subTitleTextColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          getSkillOneWidgets(context),
          SizedBox(
            height: ResponsiveWidget.isSmallScreen(context)
                ? 0
                : MediaQuery.of(context).size.height * 0.05,
          ),
          getSkillTwoWidgets(context),
          SizedBox(
            height: !ResponsiveWidget.isMediumScreen(context)
                ? 0
                : MediaQuery.of(context).size.height * 0.05,
          ),
          getSkillThreeWidgets(context)
        ]);
  }
}
