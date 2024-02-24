import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Splesh_screen/splashScreen.dart';
import 'package:pawsomcommunity/controller/profile_controller.dart';

import 'consts/consts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAlwgc-0oR6134VUPB8NoXmusVl3mh9ewA",
              appId: "1:41141333388:android:6760c82972624478b4baa9",
              messagingSenderId: "41141333388",
              projectId: "community-flutter-project"))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize GetX bindings
    WidgetsFlutterBinding.ensureInitialized();

    // Register the ProfileController
    Get.put(ProfileController());
    // if we use getx then we have change a MaterialApp to change a getMaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            // to set appBar Icon Color
            color: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
