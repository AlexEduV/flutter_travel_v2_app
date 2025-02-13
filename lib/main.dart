import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';
import 'package:flutter_travel_v2_app/pages/details_page.dart';
import 'package:flutter_travel_v2_app/pages/home_page.dart';
import 'package:flutter_travel_v2_app/pages/discover_page.dart';
import 'package:flutter_travel_v2_app/router/router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      routerConfig: CustomRouterConfig.router,
      title: 'Flutter Travel App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'SF Pro',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}