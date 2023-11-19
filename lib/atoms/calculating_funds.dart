import 'package:flutter/material.dart';
import '../../atoms/Constant/constant.dart';

class CalculatingFunds extends StatelessWidget {
  const CalculatingFunds({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 90, 0, 16),
      child: SizedBox(
        width: screenWidth - 10,
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(width: 38, height: 38, image: AssetImage(jiniLoaderImg)),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: screenWidth - 58,
                      child: const Text(
                        'Calculating your estimated budget for ',
                        style: textS12,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      'entire trip. Please wait!',
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
