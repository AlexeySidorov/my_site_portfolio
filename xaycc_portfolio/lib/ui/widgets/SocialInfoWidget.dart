import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';
// ignore: avoid_web_libraries_in_flutter
import "dart:js" as js;

class SocialInfoWidget extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      Container(
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child:
                  Image.asset('images/icon_vk.png', width: 32.0, height: 32.0),
            ),
            onTap: () {
              js.context.callMethod('open', ['https://vk.com/xayccone']);
            }),
      ),
      Container(
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('images/icon_facebook.png',
                  width: 32.0, height: 32.0),
            ),
            onTap: () {
              js.context.callMethod(
                  'open', ['https://www.facebook.com/alexey.ivanovich.9/']);
            }),
      ),
      Container(
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('images/icon_telegram.png',
                  width: 32.0, height: 32.0),
            ),
            onTap: () {
              js.context.callMethod(
                  'open', ['tg://msg?text=Mi_mensaje&to=+79826161244']);
            }),
      ),
      Container(
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('images/icon_whatsapp.png',
                  width: 32.0, height: 32.0),
            ),
            onTap: () {
              js.context.callMethod(
                  'open', ['https://api.whatsapp.com/send?phone=89826161244']);
            }),
      ),
      Container(
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('images/icon_viber.png',
                  width: 32.0, height: 32.0),
            ),
            onTap: () {
              js.context
                  .callMethod('open', ['viber://chat?number=89826161244']);
            }),
      ),
    ];
  }

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
          child: copyRightText(TextAlign
              .right)) /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      )*/
      ,
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          /*...socialMediaWidgets(),*/
          /*copyRightText(),*/
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: copyRightText(TextAlign.center))
        ],
      ),
    );
  }
}
