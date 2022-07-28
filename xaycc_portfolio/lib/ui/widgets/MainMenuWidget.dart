import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xaycc_portfolio/data/const.dart';
import 'package:xaycc_portfolio/ui/widgets/NavContactButtonWidget.dart';

class MainMenuWidget extends StatelessWidget {
  final List<Widget> navButtons;
  final List<Widget> navTopButtons;

  const MainMenuWidget({Key key, this.navButtons, this.navTopButtons})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        NavContactButtonWidget(
            icon: Icons.phone,
            text: Const.phone,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(32, 24, 32, 0),
            onPressed: () => launch("tel:${Const.phone}")),
        NavContactButtonWidget(
            icon: Icons.email_outlined,
            text: Const.email,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
            onPressed: () => launch("mailto:${Const.email}")),
        ListView(
          padding: const EdgeInsets.all(20),
          children: navButtons,
        )
      ],
    );
  }
}
