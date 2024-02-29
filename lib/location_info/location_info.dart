import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationInformation extends StatefulWidget {
  const LocationInformation({super.key});

  @override
  State<LocationInformation> createState() => _LocationInformationState();
}

class _LocationInformationState extends State<LocationInformation> {
  getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      log("Location Denied ");
      LocationPermission ask = await Geolocator.requestPermission();
    } else {
      Position currentposition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      log("Latitude=${currentposition.latitude.toString()}");
      log("longitude=${currentposition.longitude.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          getCurrentLocation();
        },
        child: const Text("abc"),
      ),
    );
  }
}
