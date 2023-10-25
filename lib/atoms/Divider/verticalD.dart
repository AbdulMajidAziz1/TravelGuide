import 'package:flutter/material.dart';

class VerticalD extends StatelessWidget {
  final double wid;

  const VerticalD({super.key,
    required this.wid
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: wid,
      child: const VerticalDivider(
        color: Color(0xff000000),
      ),
    );
  }
}
