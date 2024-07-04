import 'package:flutter/material.dart';

import 'package:flutter_travel_v2_app/style/project_colors.dart';

class DotSlider extends StatelessWidget {
  final int index;
  final double? dotSize;

  const DotSlider({
    required this.index,
    this.dotSize = 6,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 10,
      children: List.generate(3, (sliderIndex) {

        return Container(
          height: dotSize,
          width: index == sliderIndex ? 22 : dotSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: index == sliderIndex ? ProjectColors.accentColor
                  : Colors.grey,
            ),
            color: index == sliderIndex ? ProjectColors.accentColor
                : Colors.white,
          ),
        );
      }),
    );
  }
}
