import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_travel_v2_app/widgets/grid_tile_normal.dart';
import 'package:gap/gap.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
          children: [

            const Gap(50.0),

            //grid view
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                    mainAxisCellCount: 4,
                    child: GridTileNormal(source: 'assets/images/get-started-5.jpg',)
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: SizedBox.shrink(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: GridTileNormal(source: 'assets/images/get-started-3.jpg',)
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: GridTileNormal(source: 'assets/images/get-started-1.jpg',)
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: GridTileNormal(source: 'assets/images/get-started-4.jpg',)
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: GridTileNormal(source: 'assets/images/get-started-6.jpg',)
                  ),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: GridTileNormal(source: 'assets/images/get-started-2.jpg',)
                  ),
                ],
              ),
            )

            //slider

            //primary text

            //secondary text

            //'Get started' button
          ],
        )
    );
  }
}
