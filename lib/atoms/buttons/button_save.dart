import 'package:flutter/material.dart';

class ButtonSave extends StatelessWidget {

  final Color color;
  final String title;
  const ButtonSave({super.key,
    required this.color,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: 268,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: color
        ),
        child: Center(
          child: Text(title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      );
  }
}
