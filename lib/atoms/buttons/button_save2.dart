import 'package:flutter/material.dart';

class ButtonSave2 extends StatelessWidget {

  final Color color;
  final String title;
  const ButtonSave2({super.key,
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
          border: Border.all(width: 1, color: const Color(0xff757575)),
          color: color
      ),
      child: Center(
        child: Text(title,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Color(0xff161518),
          ),
        ),
      ),
    );
  }
}
