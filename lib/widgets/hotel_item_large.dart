import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/style/project_colors.dart';
import 'package:gap/gap.dart';

class HotelItemLarge extends StatelessWidget {
  final Hotel hotel;

  const HotelItemLarge({
    required this.hotel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const double borderRadius = 20.0;

    return Stack(
      children: [

        Container(
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
                )
            ),
            child: Column(
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
                    ),

                  ],
                ),

                const Gap(3.0),

                //location
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

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



                  ],
                )

              ],
            ),
          ),
        ),

        //deal banner


      ],
    );
  }
}
