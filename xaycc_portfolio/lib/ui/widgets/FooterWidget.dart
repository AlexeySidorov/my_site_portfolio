import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class FooterWidget extends StatefulWidget {
  @override
  FooterWidgetState createState() => FooterWidgetState();
}

class FooterWidgetState extends State<FooterWidget> {
  Widget copyRightText(TextAlign textAlign) => Text(
        "Made with ❤️ in Russia using Flutter Web by Aleksey Sidorov.",
        textAlign: textAlign,
        style: TextStyle(
          color: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Container(
            width: double.infinity,
            padding: EdgeInsets.zero,
            child: copyRightText(TextAlign.right)),
        mediumScreen: Container(
            width: double.infinity, child: copyRightText(TextAlign.center)),
        smallScreen: Container(
            width: double.infinity,
            padding: EdgeInsets.zero,
            child: copyRightText(TextAlign.center)));
  }
}
