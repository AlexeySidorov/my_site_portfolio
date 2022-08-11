import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
import 'package:xaycc_portfolio/ui/widgets/LiveDotWidget.dart';

class NavHeaderWidget extends StatefulWidget {
  final List<Widget>? navButtons;

  const NavHeaderWidget({Key? key, required this.navButtons}) : super(key: key);

  @override
  NavHeaderWidgetState createState() => NavHeaderWidgetState();
}

class NavHeaderWidgetState extends State<NavHeaderWidget> {
  Widget getSocialWidgets() {
    return Container(
        height: 32,
        child: Row(children: [
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset("images/icon_telegram.png",
                      width: 32, height: 32),
                ),
              )),
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset("images/icon_whatsapp.png",
                          width: 32, height: 32)))),
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset("images/icon_skype.png",
                          width: 32, height: 32)))),
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset("images/icon_viber.png",
                          width: 32, height: 32)))),
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset("images/icon_instagram.png",
                          width: 32, height: 32)))),
          Container(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset("images/icon_youtube.png",
                          width: 32, height: 32))))
        ]));
  }

  Widget getHeaderWidgets(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          LiveDotWidget(),
        ],
      );
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          LiveDotWidget(),
        ],
      );
      //  getSocialWidgets()
      /* : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      LiveDotWidget(),
                    ],
                  ),
                  getSocialWidgets()
                ]);*/
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LiveDotWidget(),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(48, 6, 48, 0),
              child: Row(
                children: widget.navButtons ?? [],
              )),
          getSocialWidgets()
        ],
      );
    }
  }

  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: getHeaderWidgets(context)));
  }
}
