import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/widgets/circled_button.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';
import 'package:gap/gap.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            const Gap(10.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //text
                  const Expanded(
                    child: PrimaryText(
                      text: 'Where you want to go?',
                      fontSize: 30,
                      textAlign: TextAlign.start,
                      height: 1.0,
                    ),
                  ),

                  //search icon
                  Expanded(
                    child: Row(
                      children: [

                        const Spacer(),

                        CircledButton(
                          onTap: () {},
                          icon: Icons.search,
                        ),


                      ],
                    ),
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
