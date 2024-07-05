import 'package:flutter/material.dart';

class PriceRow extends StatelessWidget {
  final String price;
  final double priceFontSize;
  final double labelFontSize;
  final Color? textColor;

  const PriceRow({
    required this.price,
    this.priceFontSize = 14,
    this.labelFontSize = 12,
    this.textColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$$price/',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: priceFontSize,
          ),
        ),

        Text(
          'night',
          style: TextStyle(
            color: textColor,
            fontSize: labelFontSize,
          ),
        ),

      ],
    );
  }
}
