import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Splesh_screen/skip3.dart';

class Skip2 extends StatefulWidget {
  const Skip2({super.key});

  // final String? title_1;
  // final String? title_2;
  // final String? img;

  // const Skip2(
  //     {Key? key,
  //     required this.title_1,
  //     required this.title_2,
  //     required this.img})
  //     : super(key: key);
  @override
  State<Skip2> createState() => _Skip2State();
}

class _Skip2State extends State<Skip2> {
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
                        image: AssetImage("assets/images/dog2.png"),
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
                              color: Color(0xFFCA7867),
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
                              color: Color(0xFFD9D9D9),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ), // Added the missing closing parenthesis here
                  ),
                ),
                const Align(
                  alignment: Alignment(0.1, 0.25), // Adjust alignment as needed
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Text(
                      'Make a new friend',
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
                      'here you can meet your dream friends and enjoy with them',
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
                      Get.to(() => const Skip3());
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFCA7867),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward, // Replace with the desired icon
                        color: Colors.white,
                        size: 30, // Adjust the size of the icon as needed
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
