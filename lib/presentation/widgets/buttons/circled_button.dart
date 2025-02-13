import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final double padding;
  final Color color;
  final double borderRadius;

  const CircledButton({
    required this.onTap,
    required this.icon,
    this.padding = 12.0,
    this.color = Colors.black87,
    this.borderRadius = 24.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
