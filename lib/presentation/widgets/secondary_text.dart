import 'package:flutter/material.dart';

class SecondaryText extends StatelessWidget {
  final String text;
  final double fontSize;

  const SecondaryText({
    required this.text,
    this.fontSize = 17,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.black54,
        ),
      ),
    );
  }
}
