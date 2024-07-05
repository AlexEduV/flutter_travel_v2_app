import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/location_row.dart';
import 'package:gap/gap.dart';

import 'package:flutter_travel_v2_app/style/project_colors.dart';

class InfoColumn extends StatelessWidget {
  final Hotel hotel;

  const InfoColumn({
    required this.hotel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        //name
        Text(
          hotel.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        const Gap(3.0),

        //location
        LocationRow(locationName: hotel.location),

        const Gap(3.0),

        //price and stars
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                Text(
                  '\$${hotel.price}/',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),

                const Text(
                  'night',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),

              ],
            ),

            Row(
              children: [

                const Icon(
                  Icons.star,
                  color: ProjectColors.starColor,
                ),

                const Gap(4.0),

                Text(
                  hotel.stars.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )

              ],
            )

          ],
        )

      ],
    );
  }
}
