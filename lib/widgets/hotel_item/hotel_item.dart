import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/info_column.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/info_column_wide.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/sale_banner.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotel;
  final bool isLarge;
  final Function() onTap;

  const HotelItem({
    required this.hotel,
    required this.onTap,
    this.isLarge = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const double borderRadius = 20.0;

    return Stack(
      children: [

        //cover picture
        Material(
          borderRadius: BorderRadius.circular(borderRadius),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: !isLarge ? 190 : null,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  image: DecorationImage(
                    image: AssetImage(
                        hotel.assetSrc,
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
        ),

        //bottom info
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius)),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black87,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: !isLarge ? InfoColumn(hotel: hotel,) : InfoColumnWide(hotel: hotel),
          ),
        ),

        Visibility(
          visible: isLarge,
          child: Positioned(
            left: 15,
            top: 15,
            child: SaleBanner(text: hotel.saleBannerText ?? 'Sale here'),
          ),
        ),

      ],
    );
  }
}
