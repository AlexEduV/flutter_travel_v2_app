import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final double padding;

  const CircledButton({
    required this.onTap,
    required this.icon,
    this.padding = 12.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const double borderRadius = 24.0;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(padding),
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
