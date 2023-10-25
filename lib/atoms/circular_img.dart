import 'package:flutter/material.dart';

class CircularImg extends StatelessWidget {
  final String pathP;
  final Color color1;
  final double height1;
  final double width1;
  const CircularImg({super.key,
    required this.pathP,
    required this.color1,
    required this.width1,
    required this.height1
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height1,
      width: width1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color1,
        image: DecorationImage(
          image: AssetImage(pathP),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Color(0xffFFFFFF),
          width: 1.79
        )
      ),
    );
  }
}