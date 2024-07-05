import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/location_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/price_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/stars_row.dart';
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

            PriceRow(
              price: hotel.price.toString(),
            ),

            //stars
            StarsRow(
              stars: hotel.stars.toString(),
            )

          ],
        )

      ],
    );
  }
}
