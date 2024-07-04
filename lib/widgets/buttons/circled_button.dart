import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final double borderRadius;
  final Function() onTap;
  final IconData icon;

  const CircledButton({
    required this.onTap,
    required this.icon,
    this.borderRadius = 24.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 5.0),
                blurRadius: 15.0,
                color: Colors.black12,
              )
            ]
          ),
          child: Icon(
            icon,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
