import 'package:flutter/material.dart';

class NavContactButtonWidget extends StatelessWidget {
  final text;
  final IconData? icon;
  final onPressed;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double width;
  final double height;

  const NavContactButtonWidget(
      {Key? key,
      @required this.icon,
      @required this.text,
      @required this.onPressed,
      this.padding = EdgeInsets.zero,
      this.textColor = Colors.transparent,
      this.backgroundColor = Colors.transparent,
      this.width = 0,
      this.height = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        label: Text(text, style: TextStyle(color: textColor, fontSize: 12)),
        icon: Icon(icon),
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding),
            fixedSize: MaterialStateProperty.all<Size>(
                width == 0 ? Size.infinite : Size(width, height))));
  }
}
