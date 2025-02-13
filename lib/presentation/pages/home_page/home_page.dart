import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/presentation/pages/home_page/widgets/photo_grid.dart';
import 'package:flutter_travel_v2_app/presentation/widgets/dot_slider.dart';
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

            const SizedBox(height: 16.0),

            const PhotoGrid(),

            const SizedBox(height: 32.0),

            //slider
            DotSlider(index: index),

            const SizedBox(height: 24.0),

            //primary text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: PrimaryText(text: 'Easy way to book your hotel.'),
            ),

            const SizedBox(height: 12.0),

            //secondary text
            const SecondaryText(
              text: 'Also book a flight ticket, places, food, and many more.',
            ),

            const Spacer(),

            //'Get started' button
            SplashButton(
              text: 'Get Started',
              onTap: () {
                context.goNamed('discover');
              },
            ),

            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
