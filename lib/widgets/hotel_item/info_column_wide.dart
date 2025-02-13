import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/location_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/price_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/stars_row.dart';
import 'package:gap/gap.dart';

class InfoColumnWide extends StatelessWidget {
  final Hotel hotel;

  const InfoColumnWide({
    required this.hotel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        //name
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

            //stars
            StarsRow(
              stars: hotel.stars.toString(),
              fontSize: 16,
            ),

          ],
        ),

        const Gap(3.0),

        //location
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            LocationRow(
              locationName: hotel.location,
              fontSize: 14,
              iconSize: 22,
            ),

            const Gap(3.0),

            //price
            PriceRow(
              price: hotel.price.toString(),
              priceFontSize: 16,
              labelFontSize: 16,
            ),

          ],
        )

      ],
    );
  }
}
