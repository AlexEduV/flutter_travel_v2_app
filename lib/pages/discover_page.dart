import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/data_model.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/circled_button.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/custom_text_button.dart';
import 'package:flutter_travel_v2_app/widgets/hotel_item/hotel_item.dart';
import 'package:flutter_travel_v2_app/widgets/category_selection_item.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';
import 'package:flutter_travel_v2_app/widgets/section_title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  final Map<String, IconData> sections = {
    'Hotel' : FontAwesomeIcons.hotel,
    'Flight' : Icons.flight,
    'Place' : Icons.location_on,
    'Food' : FontAwesomeIcons.bellConcierge,
  };

  late int selectedSectionIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const Gap(30.0),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //text
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 40.0),
                        child: PrimaryText(
                          text: 'Where you wanna go?',
                          fontSize: 26,
                          textAlign: TextAlign.start,
                          height: 1.0,
                        ),
                      ),
                    ),

                    //search icon
                    CircledButton(
                      onTap: () {},
                      icon: Icons.search,
                    ),

                  ],
                ),
              ),

              const Gap(20.0),

              //category selection
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {

                      return CategorySelectionItem(
                        isSelected: index == selectedSectionIndex,
                        onTap: () {
                          setState(() {
                            selectedSectionIndex = index;
                          });
                        },
                        text: sections.keys.elementAt(index),
                        icon: sections.values.elementAt(index),
                      );

                    },
                    separatorBuilder: (_, index) {

                      return const Gap(15.0);
                    },
                  ),
                ),
              ),

              const Gap(25.0),

              //'Popular' section title with 'See All' button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const SectionTitle(
                      title: 'Popular Hotels',
                    ),

                    CustomTextButton(
                      text: 'See All',
                      onTap: () {},
                    ),

                  ],
                ),
              ),

              const Gap(10.0),

              //'popular' horizontal list view
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  height: 230,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(right: 15.0),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {

                      return HotelItem(
                        hotel: DataModel.hotels[index],
                        onTap: () {
                          context.goNamed('details', extra: DataModel.hotels[index]);
                        },
                      );

                    },
                    separatorBuilder: (_, index) {

                      return const Gap(18.0);
                    },
                  ),

                ),
              ),

              const Gap(25.0),

              //'Hot Deals' section title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    SectionTitle(
                      title: 'Hot Deals',
                    ),
                  ],
                ),
              ),

              const Gap(10.0),

              //'hot deals' large item
              SizedBox(
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: HotelItem(
                    hotel: DataModel.hotels.last,
                    isLarge: true,
                    onTap: () {
                      context.goNamed('details', extra: DataModel.hotels.last);
                    },
                  ),
                ),
              ),

              const Gap(25.0),

            ],
          ),
        ),
      ),
    );
  }
}
