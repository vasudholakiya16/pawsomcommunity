import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Splesh_screen/selection.dart';

class Skip3 extends StatefulWidget {
  const Skip3({super.key});

  @override
  State<Skip3> createState() => _Skip1State();
}

class _Skip1State extends State<Skip3> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         width: 430,
//         height: 850,
//         clipBehavior: Clip.antiAlias,
//         decoration: const BoxDecoration(color: Colors.white),
//         child: Stack(
//           children: [
//             Positioned(
//               left: 0,
//               top: 0,
//               child: Container(
//                 width: 430,
//                 height: 932,
//                 decoration: const BoxDecoration(color: Colors.white),
//               ),
//             ),
//             Positioned(
//               left: -50,
//               top: -110,
//               child: Container(
//                 width: 530,
//                 height: 530,
//                 decoration: const ShapeDecoration(
//                   color: Color(0xFFF48C76),
//                   shape: OvalBorder(),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 56,
//               top: 57,
//               child: Container(
//                 width: 290,
//                 height: 388,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(whiteDog), // Update with your image asset
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 171,
//               top: 477,
//               child: SizedBox(
//                 width: 60,
//                 height: 6,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: 27,
//                       top: 0,
//                       child: Container(
//                         width: 6,
//                         height: 6,
//                         decoration: const ShapeDecoration(
//                           color: Color(0xFFD9D9D9),
//                           shape: OvalBorder(),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 37,
//                       top: 0,
//                       child: Container(
//                         width: 6,
//                         height: 6,
//                         decoration: const ShapeDecoration(
//                           color: Color(0xFFD9D9D9),
//                           shape: OvalBorder(),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 47,
//                       top: 0,
//                       child: Container(
//                         width: 6,
//                         height: 6,
//                         decoration: const ShapeDecoration(
//                           color: Color(0xFFCA7867),
//                           shape: OvalBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 366,
//               top: 872,
//               child: Container(
//                 width: 45,
//                 height: 45,
//                 decoration: ShapeDecoration(
//                   color: const Color(0xFFCA7867),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               right: 25,
//               top: 800,
//               child: GestureDetector(
//                 onTap: () {
//                   Get.to(() => const UserDoctor());
//                 },
//                 child: Container(
//                   width: 100,
//                   height: 45,
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFFCA7867),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                           width:
//                               5), // Adjust the spacing between the icon and text
//                       Text(
//                         'Start',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.none),
//                       ),
//                       Icon(
//                         Icons.arrow_forward, // Replace with the desired icon
//                         color: Colors.white,
//                         size: 30, // Adjust the size of the icon as needed
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const Positioned(
//               left: 25,
//               top: 810,
//               child: SizedBox(
//                 width: 45,
//                 height: 45,
//                 child: Text(
//                   'SKIP',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontFamily: 'Itim',
//                       fontWeight: FontWeight.w400,
//                       height: 0,
//                       decoration: TextDecoration.none),
//                 ),
//               ),
//             ),
//             const Positioned(
//               left: 65,
//               top: 540,
//               child: SizedBox(
//                 width: 300,
//                 height: 40,
//                 child: Text(
//                   'Find partner for your pet',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 32,
//                       fontFamily: 'Itim',
//                       fontWeight: FontWeight.w400,
//                       height: 0,
//                       decoration: TextDecoration.none),
//                 ),
//               ),
//             ),
//             const Positioned(
//               left: 90,
//               top: 590,
//               child: SizedBox(
//                 width: 260,
//                 height: 70,
//                 child: Text(
//                   'join and discover your favorite pet and find everything for your pets in your locality',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Color(0xFF636363),
//                       fontSize: 16,
//                       fontFamily: 'Itim',
//                       fontWeight: FontWeight.w400,
//                       height: 0,
//                       decoration: TextDecoration.none),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 820,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF48B76),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(700),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 0, top: 0, bottom: 0, right: 20),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/dog3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 400,
                  child: SizedBox(
                    width: 60,
                    height: 6,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 27,
                          top: 0,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 37,
                          top: 0,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 47,
                          top: 0,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFCA7867),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ), // Added the missing closing parenthesis here
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.25), // Adjust alignment as needed
                  child: SizedBox(
                    width: 400,
                    height: 100,
                    child: Text(
                      'Find partner for your pet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 30,
                        fontFamily: 'Irish Grover',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.1, 0.4), // Adjust alignment as needed
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Text(
                      'join and discover your favorite pet and find everything for your pets in your locality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 16,
                        fontFamily: 'Irish Grover',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment:
                      const Alignment(0.8, 1.0), // Adjust alignment as needed
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const UserDoctor());
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFCA7867),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width:
                                  5), // Adjust the spacing between the icon and text
                          Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          Icon(
                            Icons
                                .arrow_forward, // Replace with the desired icon
                            color: Colors.white,
                            size: 30, // Adjust the size of the icon as needed
                          ),
                        ],
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
