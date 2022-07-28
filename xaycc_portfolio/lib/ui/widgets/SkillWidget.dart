import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/infrastructure/tools/responsive_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: ResponsiveWidget.isLargeScreen(context) //Start desktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                      //C#
                      width: 215,
                      height: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('images/csharp_icon.png',
                                  width: 82.0, height: 82.0)),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Опыт:",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                ),
                                Text(
                                  "10 лет",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                )
                              ])
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      //Java
                      width: 205,
                      height: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('images/java_icon.png',
                                  width: 78.0, height: 78.0)),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Опыт:",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                ),
                                Text(
                                  "8 лет",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                )
                              ])
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      //Kotlin
                      width: 235,
                      height: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('images/kotlin_icon.png',
                                  width: 82.0, height: 82.0)),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Опыт:",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                ),
                                Text(
                                  "> 3 лет",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                )
                              ])
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      //swift
                      width: 250,
                      height: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 12, 24, 12),
                              child: Image.asset('images/swift_icon.png',
                                  width: 72.0, height: 72.0)),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Опыт:",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                ),
                                Text(
                                  "> 3 лет",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                )
                              ])
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      //flutter
                      width: 252,
                      height: 115,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('images/flutter_icon.png',
                                  width: 82.0, height: 82.0)),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Опыт:",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                ),
                                Text(
                                  "> 1 года",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: Colors.indigo[700],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DatcubBold"),
                                )
                              ])
                        ],
                      ),
                    )
                  ])
            : ResponsiveWidget.isSmallScreen(context) // desktop
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        )
                      ])
                : Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        )
                      ],
                    )
                  ]));
  }
}
