// // ignore_for_file: non_constant_identifier_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Home_screen/home_screen.dart';
import 'package:pawsomcommunity/Splesh_screen/skip1.dart';
import 'package:pawsomcommunity/consts/firebase_constent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashScreen> {
  get data => null;

  /// create a method to change a screen
  ChangeScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      // using GetX;
      // Get.to(() => Skip1());
      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          Get.to(() => const Skip1());
        } else {
          Get.to(() => const HomeScreen());
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    ChangeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 800,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 650,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF48B76),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(700),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 250),
                    width: 400,
                    height: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/girl-white-dog.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, -0.6), // Adjust alignment as needed
                  child: SizedBox(
                    width: 282,
                    height: 100,
                    child: Text(
                      'COMMUNITY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Irish Grover',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 9.10,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, -0.8), // Adjust alignment as needed
                  child: SizedBox(
                    width: 175,
                    height: 35,
                    child: Text(
                      'PAWSOME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Irish Grover',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 4.16,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.8), // Adjust alignment as needed
                  child: SizedBox(
                    width: 59,
                    height: 16,
                    child: Text(
                      'VERSION_1',
                      style: TextStyle(
                        color: Color(0xFFC57767),
                        fontSize: 12,
                        fontFamily: 'Itim',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 750,
                  child: Container(
                    width: 314,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFAC1B4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             height: 800,
//             child: Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 650,
//                   decoration: const BoxDecoration(
//                     color: Color(0xFFF48B76),
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(700),
//                     ),
//                   ),
//                   child: Container(
//                     margin: const EdgeInsets.only(left: 20, top: 250),
//                     width: 400,
//                     height: 500,
//                     decoration: const BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage("assets/images/girl-white-dog.png"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 73,
//                   top: 150,
//                   child: SizedBox(
//                     width: 282,
//                     height: 100,
//                     child: Text(
//                       'COMMUNITY',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontFamily: 'Irish Grover',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                           letterSpacing: 9.10,
//                           decoration: TextDecoration.none),
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 127,
//                   top: 100,
//                   child: SizedBox(
//                     width: 175,
//                     height: 35,
//                     child: Text(
//                       'PAWSOME',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 32,
//                         fontFamily: 'Irish Grover',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                         letterSpacing: 4.16,
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 184,
//                   top: 730,
//                   child: SizedBox(
//                     width: 59,
//                     height: 16,
//                     child: Text(
//                       'VERSION 1',
//                       style: TextStyle(
//                         color: Color(0xFFC57767),
//                         fontSize: 12,
//                         fontFamily: 'Itim',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 57,
//                   top: 750,
//                   child: Container(
//                     width: 314,
//                     decoration: const ShapeDecoration(
//                       shape: RoundedRectangleBorder(
//                         side: BorderSide(
//                           width: 2,
//                           strokeAlign: BorderSide.strokeAlignCenter,
//                           color: Color(0xFFFAC1B4),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Add other widgets to the Column if needed
//         ],
//       ),
//     );
//   }
// }