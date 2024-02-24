import 'package:flutter/material.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget applogoWidget1() {
  return Image.asset(dog0)
      .box
      .color(const Color(0x7FF59A86)) // Set the color to 0xFFCA7867
      .size(65, 65)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}

Widget search_Bar() {
  return const Icon(Icons.search)
      .box
      .color(Color.fromARGB(126, 223, 223, 223)) // Set the color to 0xFFCA7867
      .size(55, 55)
      .padding(const EdgeInsets.all(10))
      .roundedFull
      .make();
}

Widget loginimg() {
  return Image.asset(loginBoy).box.size(140, 70).make();
}

/// code for category widget
// Widget categoryScreen() {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       children: [
//         Container(
//           height: 130,
//           width: 80,
//           decoration: BoxDecoration(
//             color: const Color(0xFFCA7867),
//             borderRadius:
//                 BorderRadius.circular(50.0), // Adjust the radius as needed
//           ),
//           padding: EdgeInsets.only(bottom: 45, left: 8),
//           child: Row(
//             children: [
//               Image.asset(dog0)
//                   .box
//                   .color(Color.fromRGBO(255, 255, 255, 0.498))
//                   .topLeftRounded()
//                   .size(65, 100)
//                   .padding(const EdgeInsets.all(8))
//                   .roundedFull
//                   .make(),
//               // Add more widgets to the Row as needed
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget categoryScreen() {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       children: [
//         Container(
//           height: 150,
//           width: 80,
//           decoration: BoxDecoration(
//             color: const Color(0x7FF59A86),
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//           padding: EdgeInsets.only(bottom: 0, left: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.asset(dog0)
//                   .box
//                   .color(whiteColor)
//                   .topLeftRounded()
//                   .size(65, 100)
//                   .padding(const EdgeInsets.all(8))
//                   .roundedFull
//                   .make(),
//               const Text(
//                 'Dog',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                 ),
//               ).centered(),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
Widget categoryScreen(String imagePath, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          height: 150,
          width: 80,
          decoration: BoxDecoration(
            color: const Color(0x7FF59A86),
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.only(bottom: 0, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(imagePath)
                  .box
                  .color(whiteColor)
                  .topLeftRounded()
                  .size(65, 100)
                  .padding(const EdgeInsets.all(8))
                  .roundedFull
                  .make(),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ).centered(),
            ],
          ),
        ),
      ],
    ),
  );
}
