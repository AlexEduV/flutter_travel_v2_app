import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/circled_button.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/custom_text_button.dart';
import 'package:flutter_travel_v2_app/widgets/custom_badge.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/location_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/price_row.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/stars_row.dart';
import 'package:flutter_travel_v2_app/widgets/service_item.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';
import 'package:flutter_travel_v2_app/widgets/section_title.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

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

  late bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.maxFinite,
        child: Stack(
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
            const Positioned(
              top: 225.0,
              left: 25.0,
              right: 25.0,
              child: Center(
                child: CustomBadge(text: '124 photos',)
              ),
            ),

            Positioned(
              top: 270,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Gap(20.0),

                    //hotel name
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: PrimaryText(
                        text: widget.hotel.name,
                      ),
                    ),

                    const Gap(5.0),

                    //location
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: LocationRow(
                        locationName: widget.hotel.location,
                        color: Colors.black87,
                      ),
                    ),

                    //stars and price row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          //stars & reviews
                          StarsRow(
                            stars: widget.hotel.stars.toString(),
                            fontSize: 16,
                            iconSize: 24,
                            textColor: null,
                            reviews: NumberFormat.compact().format(widget.hotel.reviews),
                          ),

                          PriceRow(
                            price: widget.hotel.price.toString(),
                            textColor: null,
                            priceFontSize: 20,
                            labelFontSize: 16,
                          )
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                      child: Divider(
                        color: Colors.black12,
                      ),
                    ),

                    //description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        widget.hotel.description,
                        maxLines: !isDescriptionExpanded ? 3 : 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    //'read more' button
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: CustomTextButton(
                        text: !isDescriptionExpanded ? 'Read More' : 'Read Less',
                        fontSize: null,
                        onTap: () {
                          setState(() {
                            isDescriptionExpanded = !isDescriptionExpanded;
                          });
                        },
                      ),
                    ),

                    const Gap(30.0),

                    //'What we offer' section title
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: SectionTitle(
                        title: 'What we offer',
                      ),
                    ),

                    const Gap(15.0),

                    //'services offered' row
                    Row(
                      children: List.generate(widget.hotel.services.length, (index) {

                        return ServiceItem(
                          label: widget.hotel.services.keys.elementAt(index),
                          icon: widget.hotel.services.values.elementAt(index),
                        );

                      }),
                    )

                    //'Hosted by' section title

                    //'Hosted by' section

                    //'Book now' bottom button



                  ],
                ),
              )
            )

          ],
        ),
      ),
    );
  }
}
