import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/presentation/style/project_colors.dart';

class CategorySelectionItem extends StatelessWidget {
  final bool isSelected;
  final Function() onTap;
  final String text;
  final IconData icon;

  const CategorySelectionItem({
    required this.isSelected,
    required this.onTap,
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const double borderRadius = 20.0;

    const Color activeTint = Colors.white;
    const Color inactiveTint = Colors.black54;

    const Color activeBackground = ProjectColors.mainColor;
    const Color inactiveBackground = Colors.white;

    return Material(
      color: isSelected ? activeBackground : inactiveBackground,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: isSelected ? ProjectColors.mainColor : Colors.grey.withOpacity(0.2),
            ),
            boxShadow: isSelected ? [
              BoxShadow(
                offset: const Offset(2, 10.0),
                blurRadius: 10.0,
                color: ProjectColors.mainColor.withOpacity(0.3),
              )
            ] : [],
          ),
          child: Column(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                icon,
                color: isSelected ? activeTint : inactiveTint,
              ),

              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? activeTint : inactiveTint,
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}
