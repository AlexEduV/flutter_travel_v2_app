import 'package:flutter/material.dart';
import 'package:flutter_travel_v2_app/model/hotel.dart';

class DetailsPage extends StatefulWidget {
  final Hotel hotel;

  const DetailsPage({
    required this.hotel,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
