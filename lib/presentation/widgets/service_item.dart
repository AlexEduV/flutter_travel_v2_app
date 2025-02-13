import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.0,
          children: [

            Icon(
              icon,
              color: Colors.black54,
            ),

            Text(
              label,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 13,
              ),

            )

          ],
        ),
      ),
    );
  }
}
