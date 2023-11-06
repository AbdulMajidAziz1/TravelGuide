import 'package:flutter/material.dart';
import '../../atoms/Constant/constant.dart';
import 'dart:math' as math;
import 'package:intl/intl.dart' as intl;

class BudgetSelector extends StatefulWidget {
  const BudgetSelector({super.key});

  @override
  State<BudgetSelector> createState() => _BudgetSelectorState();
}

class _BudgetSelectorState extends State<BudgetSelector> {
  var var2 = 4000;

  @override
  Widget build(BuildContext context) {
    final formattedNumber = intl.NumberFormat.decimalPattern().format(var2);
    return Column(
      children: [
        Text(
          'What is your estimated budget?',
          style: textS617B,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'from ',
          style: textS1,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$$formattedNumber ',
              style: textS632B,
            ),
            Text(
              '1 adult, 0 Children',
              style: textS1,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 24,
          width: 245,
          child: Slider(
            value: var2.toDouble(),
            min: 1265,
            max: 10000,
            label: var2.round().toString(),
            inactiveColor: Color(0xffD9D9D9),
            activeColor: Color(0xff757575),
            thumbColor: Color(0xff292929),
            onChanged: (double value) {
              setState(() {
                var2 = value.round();
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
          width: 245,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Modest',
                style: textS3,
              ),
              Text(
                '\$5,500 - \$10,000',
                style: textS3,
              ),
              Text(
                'Luxury',
                style: textS3,
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 17,
          width: 304,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: Transform.rotate(
                  angle: -math.pi / 3.43,
                  child: const Icon(
                    Icons.flight,
                    color: Color(0xffB1B0B9),
                  ),
                ),
              ),
              Text(
                '50%',
                style: textS411G,
              ),
              Image(
                image: AssetImage('assets/instigator.png'),
                height: 16,
                width: 16,
              ),
              Text(
                '30%',
                style: textS411G,
              ),
              Image(
                image: AssetImage('assets/Vector.png'),
                height: 16,
                width: 16,
              ),
              Text(
                '20%',
                style: textS411G,
              ),
              Image(
                image: AssetImage('assets/food.png'),
                height: 16,
                width: 16,
              ),
              Text(
                '5%',
                style: textS411G,
              ),
              Text(
                'Change budget split',
                style: textS2,
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Update children',
          style: textS2,
        )
      ],
    );
  }
}
