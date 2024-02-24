import 'package:flutter/material.dart';
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
      .rounded
      .make();
}

Widget loginimg() {
  return Image.asset(loginBoy).box.size(140, 70).make();
}
