import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 5,
          width: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}


