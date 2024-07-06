import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return PrimaryText(
      text: title,
      fontSize: 24,
    );
  }
}
