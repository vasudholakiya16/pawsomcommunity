import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/Auth_screen/signupscreen.dart';
import 'package:pawsomcommunity/Home_screen/home_screen.dart';
import 'package:pawsomcommunity/Splesh_screen/skip1.dart';
import 'package:pawsomcommunity/Splesh_screen/skip2.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:pawsomcommunity/controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //init Home controller
    var Controller = Get.put(HomeContainer());

    var navbarItem = [
      const BottomNavigationBarItem(
        icon: SizedBox(
          child: Icon(
            Icons.home_outlined,
            size: 30.0,
          ),
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: SizedBox(
          child: Icon(
            Icons.favorite,
            size: 30.0,
          ),
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: SizedBox(
          child: Icon(
            Icons.add_circle_outline_outlined,
            size: 30.0,
          ),
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: SizedBox(
          child: Icon(
            Icons.message_rounded,
            size: 30.0,
          ),
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: SizedBox(
          child: Icon(
            Icons.account_circle_outlined,
            size: 30.0,
          ),
        ),
        label: '',
      ),
    ];

    var navBody = [
      const HomeScreen(),
      Skip1(),
      // const LoginScreen(),
      const SignupScreen(),
      const Skip1(),
      const Skip2()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(Controller.CurrentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            currentIndex: Controller.CurrentNavIndex.value,
            selectedItemColor: const Color.fromARGB(255, 143, 53, 35),
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 245, 208, 201),
            items: navbarItem,
            onTap: (value) {
              Controller.CurrentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
