import 'package:flutter/material.dart';
import '../../atoms/Constant/constant.dart';

class CalculatingFunds extends StatelessWidget {
  const CalculatingFunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 90, 0, 16),
      child: SizedBox(
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(width: 38, height: 38, image: AssetImage('assets/jinni-loader.gif')),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    const Text(
                      'Calculating your estimated budget for entire trip...',
                      style: textS12,
                    ),
                    const Text(
                      'Please wait!',
                      style: textS12,
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
