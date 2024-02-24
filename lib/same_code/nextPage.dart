import 'package:flutter/material.dart';

class Rectangle2 extends StatelessWidget {
  const Rectangle2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: ShapeDecoration(
            color: const Color(0xFFCA7867),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
