import 'package:flutter/material.dart';

class BarDestination extends StatelessWidget {
  final String title;
  const BarDestination({super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 6,
        ),
        Center(
          child: Container(
            height: 4,
            width: 38,
            color: const Color(0xffE2E2E2),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Center(
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
