import 'package:flutter/material.dart';

import '../theme/style.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback? function;
  final Color backgroundColor, textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  const DefaultButton({
    Key? key,
    required this.text,
    this.function,
    this.backgroundColor = primaryColor,
    this.textColor = blackColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 16,
    this.marginTop = 18.0,
    this.marginLeft = 0.0,
    this.marginRight = 0.0,
    this.marginBottom = 18.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(18.0),
        margin: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          left: marginLeft,
          right: marginRight,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
