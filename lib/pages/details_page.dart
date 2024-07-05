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
                  padding: 10.0,
                ),

                Row(
                  children: [

                    CircledButton(
                      onTap: () {},
                      icon: Icons.share_outlined,
                      padding: 10.0,
                    ),

                    const Gap(15.0),

                    CircledButton(
                      onTap: () {},
                      icon: Icons.favorite_border_rounded,
                      padding: 10.0,
                    ),


                  ],
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
