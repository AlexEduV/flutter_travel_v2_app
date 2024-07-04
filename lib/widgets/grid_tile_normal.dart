import 'package:flutter/material.dart';

class GridTileNormal extends StatelessWidget {

  final String source;
  final bool isEnlarged;

  const GridTileNormal({
    required this.source,
    this.isEnlarged = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isEnlarged ? 80 : 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            source,
          )
        )
      ),
    );
  }
}
