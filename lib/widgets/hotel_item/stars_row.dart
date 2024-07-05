import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/style/project_colors.dart';

class StarsRow extends StatelessWidget {
  final String stars;
  final double iconSize;
  final double fontSize;

  const StarsRow({
    required this.stars,
    this.iconSize = 20,
    this.fontSize = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 4.0,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [

        Icon(
          Icons.star,
          size: iconSize,
          color: ProjectColors.starColor,
        ),

        Text(
          stars,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),

      ],
    );

  }
}
