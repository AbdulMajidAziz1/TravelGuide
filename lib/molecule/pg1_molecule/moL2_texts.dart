import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../atoms/Constant/constant.dart';

class MultiText extends StatefulWidget {
  const MultiText({super.key});

  @override
  State<MultiText> createState() => _MultiTextState();
}

class _MultiTextState extends State<MultiText> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Setup Successful! ', style: textS617B),
        SizedBox(
          height: 10,
        ),
        const Text('Your share of funding plan has been created. ',
            style: textS416B),
        const SizedBox(
          height: 30,
        ),
        const Text('Your Share ', style: textS1),
        const SizedBox(
          height: 10,
        ),
        const Text('\$6,250', style: textS632B),
        SizedBox(
          height: 27,
          width: 239,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Set funds aside for the entire trip',
                style: textS12,
              ),
              FlutterSwitch(
                value: status,
                height: 26,
                width: 43,
                borderRadius: 25,
                toggleSize: 20,
                toggleColor: Colors.white,
                activeColor: Colors.grey,
                onToggle: ((val) {
                  setState(() {
                    status = val;
                  });
                }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
