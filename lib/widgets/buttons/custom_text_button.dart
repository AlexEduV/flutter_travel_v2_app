import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/style/project_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double? fontSize;

  const CustomTextButton({
    required this.text,
    required this.onTap,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: ProjectColors.accentColor,
          fontSize: fontSize,
        ),
      ),
    );

  }
}
