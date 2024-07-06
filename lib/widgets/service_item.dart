import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceItem extends StatelessWidget {
  final String label;
  final IconData icon;

  const ServiceItem({
    required this.label,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              color: Colors.black54,
            ),

            const Gap(5.0),

            Text(
              label,
              style: const TextStyle(
                color: Colors.black54,
              ),

            )

          ],
        ),
      ),
    );
  }
}
