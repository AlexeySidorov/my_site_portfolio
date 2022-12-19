import 'package:flutter/material.dart';

class TitleSubTitleWidget extends StatefulWidget {
  String? title;
  String? subTitle;
  late double titleFonSize;
  late double subTitleFonSize;
  late TextAlign titleTextAlign;
  late TextAlign subTitleTextAlign;
  late Alignment containerAlignment;
  late FontWeight titleFontWeight;
  late FontWeight subTitleFontWeight;
  String? fontFamily;
  double? titleScaleFactor;
  double? subTitleScaleFactor;
  late Color titleTextColor;
  late Color subTitleTextColor;

  TitleSubTitleWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.fontFamily,
      this.titleScaleFactor,
      this.subTitleScaleFactor,
      this.titleFonSize = 12,
      this.subTitleFonSize = 12,
      this.containerAlignment = Alignment.topLeft,
      this.titleFontWeight = FontWeight.normal,
      this.titleTextAlign = TextAlign.left,
      this.subTitleTextAlign = TextAlign.left,
      this.subTitleFontWeight = FontWeight.normal,
      this.titleTextColor = Colors.black,
      this.subTitleTextColor = Colors.black})
      : super(key: key);

  @override
  TitleSubTitleWidgetState createState() => TitleSubTitleWidgetState();
}

class TitleSubTitleWidgetState extends State<TitleSubTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: widget.containerAlignment,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            widget.title ?? "",
            textScaleFactor: widget.titleScaleFactor,
            textAlign: widget.titleTextAlign,
            style: TextStyle(
              fontWeight: widget.titleFontWeight,
              color: widget.titleTextColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.titleFonSize,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.subTitle ?? "",
              textScaleFactor: widget.subTitleScaleFactor,
              textAlign: widget.subTitleTextAlign,
              style: TextStyle(
                fontWeight: widget.subTitleFontWeight,
                color: widget.subTitleTextColor,
                fontFamily: widget.fontFamily,
                fontSize: widget.subTitleFonSize,
              )),
        ]));
  }
}
