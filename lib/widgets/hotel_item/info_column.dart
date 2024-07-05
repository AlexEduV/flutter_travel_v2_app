import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
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
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        const Gap(3.0),

        //location
        Row(
          children: [

            //location icon
            const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 22,
            ),

            const Gap(5.0),

            //location text
            Text(
              hotel.location,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),

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
                    fontSize: 16,
                  ),
                ),

                const Text(
                  'night',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
                    fontSize: 16,
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