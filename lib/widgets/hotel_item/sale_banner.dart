import 'package:flutter/material.dart';

import 'package:flutter_travel_v2_app/style/project_colors.dart';

class SaleBanner extends StatelessWidget {
  final String text;

  const SaleBanner ({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ProjectColors.dealsBannerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
