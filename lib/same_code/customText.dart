import 'package:flutter/material.dart';
import 'package:pawsomcommunity/consts/colors.dart';
import 'package:pawsomcommunity/consts/styles.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customTextField({
  String? title,
  String? hint,
  TextEditingController? controller,
  bool isPass = false,
  // required String? Function(dynamic value) validator,
  // Specify the controller type
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.black).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: isPass,
        // obscureText:isPass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
          ),
          hintText: hint,
          isDense: true,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: redColor,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}
