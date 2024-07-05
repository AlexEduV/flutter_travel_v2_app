import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/circled_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatefulWidget {
  final Hotel hotel;

  const DetailsPage({
    required this.hotel,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          //cover image
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.hotel.assetSrc,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //app bar buttons
          Positioned(
            top: 50.0,
            left: 25.0,
            right: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                CircledButton(
                  onTap: () {
                    context.goNamed('discover');
                  },
                  icon: Icons.arrow_back,
                  color: Colors.black54,
                  padding: 10.0,
                ),

                Row(
                  children: [

                    CircledButton(
                      onTap: () {},
                      icon: Icons.share_outlined,
                      color: Colors.black54,
                      padding: 10.0,
                    ),

                    const Gap(15.0),

                    CircledButton(
                      onTap: () {
                        setState(() {
                          widget.hotel.isFavorite = !widget.hotel.isFavorite;
                        });
                      },
                      icon: widget.hotel.isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                      color: Colors.black54,
                      padding: 10.0,
                    ),


                  ],
                ),

              ],
            ),
          ),

          //number of photos
          Positioned(
            bottom: 15.0,
            left: 10.0,
            right: 10.0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.black38,
                ),
                child: const Text(
                  '124 photos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),

          

        ],
      ),
    );
  }
}
