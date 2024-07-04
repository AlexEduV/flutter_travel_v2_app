import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/widgets/buttons/circled_button.dart';
import 'package:flutter_travel_v2_app/widgets/category_selection_item.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';
import 'package:gap/gap.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  final Map<String, IconData> sections = {
    'Hotel' : Icons.hotel,
    'Flight' : Icons.flight,
    'Place' : Icons.location_on,
    'Food' : Icons.set_meal,
  };

  late int selectedSectionIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                        fontSize: 32,
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

            const Gap(30.0),

            //category selection
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {

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
                  separatorBuilder: (context, index) {

                    return const Gap(20.0);
                  },
                ),
              ),
            ),

            const Gap(30.0),

            //'Popular' section title with 'See All' button

            //'popular' horizontal list view

            //'Hot Deals' section title

            //'hot deals' large item

          ],
        ),
      ),
    );
  }
}
