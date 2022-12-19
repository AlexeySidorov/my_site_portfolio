import 'package:flutter/material.dart';

class NavButtonWidget extends StatelessWidget {
  final text;
  final onPressed;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;

  const NavButtonWidget(
      {Key? key,
      @required this.text,
      @required this.onPressed,
      this.textColor = Colors.white,
      this.padding = EdgeInsets.zero,
      this.backgroundColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontFamily: "TerminatorGenisys", fontSize: 16),
        ),
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    side: BorderSide(color: backgroundColor))),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding)));
  }
}
