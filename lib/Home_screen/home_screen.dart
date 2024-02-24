// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pawsomcommunity/same_code/homeScreen_Image.dart';
// import 'package:velocity_x/velocity_x.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Column(
//         children: [
//           Row(
//             children: [
//               (context.screenHeight * 0.10).heightBox,
//               GestureDetector(
//                 onTap: () {
//                   print('App logo tapped!');
//                 },
//                 child: applogoWidget1().paddingOnly(left: 20.0),
//               ),
//               const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     print('Search bar tapped!');
//                   },
//                   child: search_Bar(),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 "Category".text.fontFamily('Mplus').black.size(18).make(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsomcommunity/same_code/homeScreen_Image.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              // (context.screenHeight * 1.0).heightBox,
              "Category".text.fontFamily('Mplus').black.size(18).make(),
            ],
          ),
          // search_Bar(),
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
          )
        ],
      ),
    );
  }
}


//  home: StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasError) {
//           return Text(snapshot.error.toString());
//         }
//         if (snapshot.connectionState == ConnectionState.active) {
//           if (snapshot.data == null) {
//             return const LoginScreen();
//           } else {
//             return HomeScreen(
//                 title: FirebaseAuth.instance.currentUser!.displayName!);
//           }
//         }
//       },
