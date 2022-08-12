import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class LiveDotWidget extends StatefulWidget {
  @override
  LiveDotWidgetState createState() => LiveDotWidgetState();
}

class LiveDotWidgetState extends State<LiveDotWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Text(
          "Sidorov Aleksey Ivanovich",
          textScaleFactor: 3.5,
          textAlign: ResponsiveWidget.isLargeScreen(context)
              ? TextAlign.left
              : TextAlign.center,
          style: TextStyle(
            fontFamily: "HalimunFontApps",
          ),
        ),
      ],
    );
  }
}
