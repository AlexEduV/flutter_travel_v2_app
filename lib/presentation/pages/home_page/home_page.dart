import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_travel_v2_app/presentation/pages/home_page/widgets/photo_grid.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/dot_slider.dart';
import 'package:flutter_travel_v2_app/presentation/pages/home_page/widgets/custom_grid_tile.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/primary_text.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/secondary_text.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/buttons/splash_button.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            //grid view
            const PhotoGrid(),

            const SizedBox(height: 15.0),

            //slider
            DotSlider(index: index),

            const SizedBox(height: 25.0),

            //primary text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: PrimaryText(text: 'Easy way to book your hotel.'),
            ),

            const SizedBox(height: 10.0),

            //secondary text
            const SecondaryText(text: 'Also book a flight ticket, places, food, and many more.'),

            const SizedBox(height: 10.0),

            const Spacer(),

            //'Get started' button
            SplashButton(
              text: 'Get Started',
              onTap: () {
                context.goNamed('discover');
              },
            ),

            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
