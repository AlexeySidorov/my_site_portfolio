import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class MainTopHeaderWidget extends StatelessWidget {
  final List<Widget>? navButtons;

  const MainTopHeaderWidget({Key? key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: navButtons ?? [],
          )
        ],
      ),
    );
  }
}
