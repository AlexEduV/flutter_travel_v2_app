import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/presentation/style/project_colors.dart';

class SplashButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double borderRadius;

  const SplashButton({
    required this.text,
    required this.onTap,
    this.borderRadius = 24.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        color: ProjectColors.mainColor,
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,

          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 10.0),
                  blurRadius: 10.0,
                  color: ProjectColors.mainColor.withOpacity(0.3),
                )
              ]
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.2, 0.2),
                      blurRadius: 1.0,
                      color: Color.fromARGB(100, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
