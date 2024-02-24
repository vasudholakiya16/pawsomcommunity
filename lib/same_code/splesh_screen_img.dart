import 'package:flutter/material.dart';
import 'package:pawsomcommunity/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget applogoWidget() {
  return Image.asset(dog0)
      .box
      .color(const Color(0x7FF59A86)) // Set the color to 0xFFCA7867
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}

Widget loginimg() {
  return Image.asset(loginBoy).box.size(240, 170).make();
}
