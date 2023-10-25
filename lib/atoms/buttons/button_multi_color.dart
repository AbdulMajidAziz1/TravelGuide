import 'package:flutter/material.dart';

class ButtonMulti extends StatelessWidget {

  final String title;
  const ButtonMulti({super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 268,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: LinearGradient(
            colors: [
              Color(0xffD26783),
              Color(0xffBA57B3),
              Color(0xff8855C9)
            ]
          )
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
