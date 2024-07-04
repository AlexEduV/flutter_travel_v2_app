import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel_v2_app/pages/home_page.dart';
import 'package:flutter_travel_v2_app/pages/discover_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

//go router configuration
final GoRouter _router = GoRouter(
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
          path: 'searchPage',
          name: 'searchPage',
          builder: (BuildContext context, GoRouterState state) {

            return const DiscoverPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Travel App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}