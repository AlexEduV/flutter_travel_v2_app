import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/style/project_colors.dart';
import 'package:flutter_travel_v2_app/widgets/circled_button.dart';
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
    'Place' : Icons.location_on_outlined,
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

            const Gap(25.0),

            //selection
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {

                    return Material(
                      color: index == selectedSectionIndex ? ProjectColors.mainColor : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedSectionIndex = index;
                          });
                        },
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: index == selectedSectionIndex ? ProjectColors.mainColor : Colors.grey.withOpacity(0.2),
                            ),
                            boxShadow: index == selectedSectionIndex ? [
                              BoxShadow(
                                offset: const Offset(2, 10.0),
                                blurRadius: 10.0,
                                color: ProjectColors.mainColor.withOpacity(0.3),
                              )
                            ] : [],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(
                                sections.values.elementAt(index),
                                color: index == selectedSectionIndex ? Colors.white : Colors.grey,
                              ),

                              const Gap(10.0),

                              Text(
                                sections.keys.elementAt(index),
                                style: TextStyle(
                                  color: index == selectedSectionIndex ? Colors.white : Colors.grey,
                                ),

                              )

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {

                    return const Gap(20.0);
                  },
                ),
              ),
            )

            //'popular' horizontal list view

            //hot deals

          ],
        ),
      ),
    );
  }
}
