import 'package:flutter/cupertino.dart';
import 'package:flutter_travel_v2_app/domain/entities/hotel_entity.dart';
import 'package:flutter_travel_v2_app/presentation/pages/details_page.dart';
import 'package:flutter_travel_v2_app/presentation/pages/discover_page.dart';
import 'package:flutter_travel_v2_app/presentation/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

class CustomRouterConfig {

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'root',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'discover',
            name: 'discover',
            builder: (BuildContext context, GoRouterState state) {

              return const DiscoverPage();
            },
            routes: <RouteBase>[
              GoRoute(
                  path: 'details',
                  name: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    HotelEntity hotel = state.extra as HotelEntity;

                    return DetailsPage(hotel: hotel);
                  }
              )
            ],
          ),
        ],
      ),
    ],
  );

}