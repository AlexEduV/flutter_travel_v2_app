import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontSize = 32,
    this.textAlign = TextAlign.center,
    this.height = 1.4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        height: height,
      ),
    );
  }
}
