import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:gap/gap.dart';

class CarouselItem extends StatelessWidget {
  final Hotel hotel;

  const CarouselItem({
    required this.hotel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        Container(
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
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
            padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //name
                Text(
                  hotel.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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

                //price and stars


              ],
            ),
          ),
        ),

      ],
    );
  }
}
