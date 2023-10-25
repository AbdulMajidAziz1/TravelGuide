import 'package:flutter/material.dart';

class Add_Button extends StatelessWidget {
  const Add_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffF3F3F4), //
          border: Border.all(color: const Color(0xffDCDBE0), width: 2)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: Color(0xff292929),
          )
        ],
      ),
    );
  }
}
