import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  final String title;
  const Events({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 79,
        height: 33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 1,
                color: Color(0xffD0D0D5)
            )
        ),
        child: Center(
          child: Text(title,
            style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 12,
                fontFamily: 'Inter',
                color: Color(0xff757575)
            ),
          ),
        )
      ),
    );
  }
}