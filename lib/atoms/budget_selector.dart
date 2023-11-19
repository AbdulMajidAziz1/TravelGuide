import 'package:flutter/cupertino.dart';
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
    final numericValue = int.tryParse(formattedNumber.replaceAll(',', ''));
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
              '£',
              style: textS632B,
            ),
            Text(
              '$formattedNumber ',
              style: textS632B,
            ),
            Text(
              '1 adult, 0 Children',
              style: textS1,
            ),
            // if (var2 < 4000)
            //   PopupMenuButton(
            //     constraints: const BoxConstraints.tightFor(
            //       height: 635,
            //       width: double.infinity,
            //     ),
            //     color: const Color(0xffFFFFFF),
            //     shape: const RoundedRectangleBorder(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(20),
            //         topRight: Radius.circular(20),
            //       ),
            //     ),
            //     child: const Padding(
            //       padding: EdgeInsets.only(top: 10),
            //       child: Text(
            //         'Change',
            //         // Assuming textS2 is defined somewhere in your code
            //         style: textS2,
            //       ),
            //     ),
            //     itemBuilder: (context) => [
            //       PopupMenuItem(
            //         value: 1,
            //         child: StatefulBuilder(
            //           builder: (context, setState) {
            //             return Container();
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // var2 < 4000 ? PopupMenuButton(
            //     constraints: const BoxConstraints.tightFor(
            //       height: 635,
            //       width: double.infinity,
            //     ),
            //     color: const Color(0xffFFFFFF),
            //     shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(20),
            //             topRight: Radius.circular(20))),
            //     itemBuilder: (context) => [
            //       PopupMenuItem(
            //           value: 1,
            //           child: StatefulBuilder(
            //             builder: (context, setState) {
            //               return Container(child: Text('Majid Aziz'));
            //             },
            //           )),
            //     ]) :
            // Container()
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
            min: 0,
            max: 10000,
            label: var2.round().toString(),
            inactiveColor: Color(0xffD9D9D9),
            activeColor: Color(0xff757575),
            thumbColor: Color(0xff292929),
            onChanged: (double value) {
              setState(() {
                var2 = value.round();
                if (var2 < 4000) {
                  showFormattedNumberDialog(context);
                }
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
          width: 245,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Modest',
                style: textS3,
              ),
              var2 < 100 ? Text(
                'under £100',
                style: textS3,
              )
                  : var2 >= 100 && var2<=500 ? Text(
                '£100 - £500',
                style: textS3,
              ) :
                    var2 >= 501 && var2<1000 ? Text(
                '£501 - £1,000',
                style: textS3,
              ) :
                    var2 >= 1000 && var2<2500 ? Text(
                      '£1,000 - £2,500',
                      style: textS3,
                    ) :
                    var2 >= 2500 && var2<5000 ? Text(
                      '£2,500 - £5,000',
                      style: textS3,
                    ) :
                    Text(
                      'above £5,000',
                      style: textS3,
                    ) ,
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
              SizedBox(width: 3,),
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
                image: AssetImage('assets/my_food.png'),
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

void showFormattedNumberDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => new AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
      contentPadding: EdgeInsets.fromLTRB(4, 30, 0, 0),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: Image(
                  image: AssetImage('assets/warning.png',
                  )
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Based on our calculations,we \nbelieve that a minimum estimated\nbudget of ',
                    style: textS12,
                  ),
                  TextSpan(
                    text: ' \$4,000 ',
                    style: textS12Bold,
                  ),
                  TextSpan(
                    text: 'will be \nnecessary for your essential \nbookings during this trip.',
                    style: textS12,
                  ),
                ],
              ),
            ),
            Icon(CupertinoIcons.clear_circled)
          ],
        ),
      actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Center(
                child: Text('Change budget split')),
          ),
        ],
    )
  );
}