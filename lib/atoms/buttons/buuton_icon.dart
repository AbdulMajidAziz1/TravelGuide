import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {

  final Color color;
  final String title;
  const ButtonIcon({super.key,
    required this.color,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 343,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          // border: Border.all(width: 1, color: const Color(0xff757575)),
          color: color,
        boxShadow: const [
          BoxShadow(
              color: Color(0xffFFFFFF),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(-1, 4)
          ),
          BoxShadow(
              color: Color(0xffBABECC),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(2, 1)
          ),

      ]),
      child: Center(
        child: Container(
          height: 20,
          width: 307,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff161518),
                ),
              ),
              Icon(Icons.check)
            ],
          ),
        ),
      ),
    );
  }
}
