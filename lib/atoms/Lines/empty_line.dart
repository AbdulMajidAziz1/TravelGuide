import 'package:flutter/material.dart';

class EmptyLine extends StatelessWidget {
  const EmptyLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 30,
        height: 4,
        child: LinearProgressIndicator(
          color: Color(0xff292929),
          backgroundColor: const Color(0xffE2E2E2),
        ));
    // return Container(
    //   width: 30,
    //   height: 4,
    //   decoration: BoxDecoration(
    //       color: const Color(0xffE2E2E2),
    //       borderRadius: BorderRadius.circular(4)),
    // );
  }
}
