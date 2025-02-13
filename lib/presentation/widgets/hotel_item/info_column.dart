import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/domain/entities/hotel_entity.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/hotel_item/location_row.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/hotel_item/price_row.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/hotel_item/stars_row.dart';

class InfoColumn extends StatelessWidget {
  final HotelEntity hotel;

  const InfoColumn({
    required this.hotel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 3.0,
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

        //location
        LocationRow(locationName: hotel.location),

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
