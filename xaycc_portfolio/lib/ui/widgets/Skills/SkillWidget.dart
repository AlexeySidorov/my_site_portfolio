import 'package:flutter/material.dart';

class SkillWidget extends StatefulWidget {
  final String? iconName;
  final String? text;

  const SkillWidget({required this.iconName, required this.text});

  @override
  SkillWidgetState createState() => SkillWidgetState();
}

class SkillWidgetState extends State<SkillWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          textDirection: TextDirection.ltr,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(12),
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Text(
                      widget.text ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontFamily: "TerminatorGenisys",
                          fontSize: 14),
                    ))),
            Container(
                child: Image.asset(
                    widget.iconName == null ? "" : "images/${widget.iconName}",
                    width: 64,
                    height: 64)),
          ],
        ));
  }
}
