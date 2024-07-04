import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_travel_v2_app/style/project_colors.dart';
import 'package:flutter_travel_v2_app/widgets/dot_slider.dart';
import 'package:flutter_travel_v2_app/widgets/grid_tile_normal.dart';
import 'package:flutter_travel_v2_app/widgets/primary_text.dart';
import 'package:flutter_travel_v2_app/widgets/secondary_text.dart';
import 'package:gap/gap.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int index = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [

              //grid view
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: StaggeredGrid.count(
                  crossAxisCount: 6,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: const [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: SizedBox.shrink(),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-4.jpg',)
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: SizedBox.shrink(),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-3.jpg',)
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-1.jpg',)
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-5.jpg',)
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-6.jpg',)
                    ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: GridTileNormal(source: 'assets/images/get-started-2.jpg',)
                    ),
                  ],
                ),
              ),

              const Gap(15.0),

              //slider
              DotSlider(index: index),

              const Gap(25.0),

              //primary text
              const PrimaryText(text: 'Easy way to book your hotel.'),

              const Gap(10.0),

              //secondary text
              const SecondaryText(text: 'Also book a flight ticket, places, food, and many more.'),

              const Gap(10.0),

              //'Get started' button
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: ProjectColors.mainColor,
                ),
                child: Text('Get Started'),
              )
            ],
          ),
        )
    );
  }
}
