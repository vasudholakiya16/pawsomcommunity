import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Auth_screen/loginscreen.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/strings.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:pawsomcommunity/controller/authcontroller.dart';
import 'package:pawsomcommunity/same_code/homeScreen_Image.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String location = 'Null, Press Button';
  String address = 'search';
  bool showAddress = false;

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    setState(() {
      address = ' ${place.country},${place.locality} ';
      location = 'Lat: ${position.latitude}, Long: ${position.longitude}';
      showAddress = true; // Set showAddress to true to display the address
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              (context.screenHeight * 0.20).heightBox,
              GestureDetector(
                onTap: () {
                  print('App logo tapped!');
                },
                child: applogoWidget1().paddingOnly(left: 20.0),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    print('Search bar tapped!');
                  },
                  child: search_Bar(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              "Category".text.fontFamily('Mplus').black.size(18).make(),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  print('Dog category clicked');
                },
                child: categoryScreen('assets/images/dog0.png', 'Dog'),
              ),
              GestureDetector(
                onTap: () {
                  print('Cat category clicked');
                },
                child: categoryScreen(
                    'assets/images/cat_face_main_page.png', 'Cat'),
              ),
              GestureDetector(
                onTap: () {
                  print('Fish category clicked');
                },
                child:
                    categoryScreen('assets/images/fish_main_page.png', 'Fish'),
              ),
              GestureDetector(
                onTap: () {
                  print('Chick category clicked');
                },
                child: categoryScreen(
                    'assets/images/chick_main_page.png', 'Chick'),
              ),
            ],
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: redColor),
            ),
            onPressed: () async {
              await Get.put(AuthController()).signoutMethod(context);
              Get.to(() => const LoginScreen());
            },
            child: logout.text.fontFamily(semibold).black.make(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: !showAddress,
                child: ElevatedButton(
                  onPressed: () async {
                    Position position = await _getGeoLocationPosition();
                    location =
                        'Lat: ${position.latitude} , Long: ${position.longitude}';
                    getAddressFromLatLong(position);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.location_on), // Add the location icon
                      // SizedBox(width: 8),
                      Text('Get Location'),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: showAddress,
                child: const SizedBox(width: 10),
              ),
              Visibility(
                visible: showAddress,
                child: Row(
                  children: [
                    Icon(Icons.location_on), // Add the location icon
                    // const SizedBox(width: 8),
                    Text(address),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
