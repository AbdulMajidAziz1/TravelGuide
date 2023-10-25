import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class BarDes_Icon extends StatelessWidget {
  final String title;
  const BarDes_Icon({super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Center(
          child: Container(
            height: 4,
            width: 38,
            color: Color.fromRGBO(226, 226, 226, 1),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          width: 160,
          height: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.error_outlined,
                size: 20,
              ),
              Text(
                  title,
                  style: textS616B),
            ],
          ),
        ),
      ],
    );
  }
}
