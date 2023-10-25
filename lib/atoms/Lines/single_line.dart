import 'package:flutter/material.dart';

class SingleLine extends StatelessWidget {
  const SingleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 4,
      decoration: BoxDecoration(
          color: Color(0xff292929),
          borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}