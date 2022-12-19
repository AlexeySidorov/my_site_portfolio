import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
import 'package:xaycc_portfolio/ui/widgets/TitleSubtitleWidget.dart';

class SkillWidget extends StatefulWidget {
  @override
  SkillWidgetState createState() => SkillWidgetState();
}

class SkillWidgetState extends State<SkillWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
