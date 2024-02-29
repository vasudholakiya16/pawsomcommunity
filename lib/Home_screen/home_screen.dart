import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/strings.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:pawsomcommunity/controller/authcontroller.dart';
import 'package:pawsomcommunity/same_code/homeScreen_Image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Auth_screen/loginscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String location = 'Null, Press Button';
  String address = 'search';
  bool showAddress = false;

  @override
  void initState() {
    if (FirebaseAuth.instance.currentUser == null) {
      Get.to(() => const LoginScreen());
    }
    super.initState();
    // Load the user's location when the page is initialized
    loadUserLocation();
  }

  Future<void> loadUserLocation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      location = prefs.getString('user_location') ?? 'Null, Press Button';
    });
  }

  Future<void> saveUserLocation(String userLocation) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_location', userLocation);
  }

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

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Save the user's location
    saveUserLocation('Lat: ${position.latitude} , Long: ${position.longitude}');

    return position;
  }

  Future<void> getAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    setState(() {
      address = '${place.locality}, ${place.country}, ';
      location = 'Lat: ${position.latitude}, Long: ${position.longitude}';
      showAddress = true;
    });

    // Save the user's location when the address is retrieved
    saveUserLocation(location);
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
              side: const BorderSide(color: redColor),
            ),
            onPressed: () async {
              await Get.put(AuthController())
                  .signoutMethod(context, Get.to(() => const LoginScreen()));
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCA7867),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Get Location',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
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
                    const Icon(
                      Icons.location_on,
                      color: Color(0xFFCA7867),
                    ),
                    Text(
                      address,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
