import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationRow extends StatelessWidget {
  final String locationName;
  final double iconSize;
  final double fontSize;
  final Color? color;
  
  const LocationRow({
    required this.locationName,
    this.fontSize = 12,
    this.iconSize = 20,
    this.color = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 5.0,
      children: [

        //location icon
        Icon(
          Icons.location_on_outlined,
          color: color,
          size: iconSize,
        ),

        //location text
        Text(
          locationName,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
