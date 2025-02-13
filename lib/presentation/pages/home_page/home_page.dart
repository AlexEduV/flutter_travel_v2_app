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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Offset> _primaryTextAnimation;
  late Animation<Offset> _secondaryTextAnimation;

  int index = 1;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // Primary text moves up first
    _primaryTextAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    // Secondary text starts slightly later
    _secondaryTextAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 1.0, curve: Curves.easeOut), // Delays start
    ));

    _controller.forward(); // Start animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            SlideTransition(
              position: _primaryTextAnimation,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: PrimaryText(text: 'Easy way to book your hotel.'),
              ),
            ),

            const SizedBox(height: 12.0),

            //secondary text
            SlideTransition(
              position: _secondaryTextAnimation,
              child: const SecondaryText(
                text: 'Also book a flight ticket, places, food, and many more.',
              ),
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
