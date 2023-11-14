import 'package:flutter/material.dart';

class WhiteLine extends StatelessWidget {
  const WhiteLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 4,
      decoration: BoxDecoration(
          color: Color(0xffE2E2E2),
          borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
