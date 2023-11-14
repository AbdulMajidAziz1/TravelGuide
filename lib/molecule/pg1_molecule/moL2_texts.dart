import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:login/atoms/Pop_ups/automated_popup.dart';
import 'package:login/atoms/Pop_ups/home_screen_popup.dart';
import 'package:login/atoms/calculating_funds.dart';
import 'package:login/molecule/pg1_molecule/trip_commitment.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../atoms/Constant/constant.dart';
import 'dart:math' as math;
import 'dart:async';

import '../../atoms/circular_img.dart';
import '../../atoms/budget_selector.dart';

class MultiText extends StatefulWidget {
  const MultiText({super.key});

  @override
  State<MultiText> createState() => _MultiTextState();
}

class _MultiTextState extends State<MultiText> {
  double var2 = 0;
  bool status = true;
  bool var1 = true;
  bool toggleValue = false;
  bool calculatedFunds = false;
  bool calculatingFunds = false;
  final allMonths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final previousPlanNumbers = [
    '\$350',
    '\$114',
    '\$114',
    '\$114',
    '\$114',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
  ];
  final updatedPlanNumbers = [
    '\$350',
    '\$456',
    '\$456',
    '\$114',
    '\$114',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
    '\$35',
  ];
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        calculatingFunds
            ? CalculatingFunds()
            : !calculatedFunds
                ? Column(
                    children: [
                      Text('Setup Successful! ', style: textS617B),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Your share of funding plan has been created. ',
                          style: textS416B),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Your Share ', style: textS1),
                      SizedBox(
                        height: 10,
                      ),
                      Countup(
                        begin: 0,
                        end: 7500,
                        duration: Duration(seconds: 3),
                        separator: ',',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                      Text('\$1,262', style: textS632B),
                    ],
                  )
                : BudgetSelector(),
        SizedBox(
          height: 15,
        ),
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
                value: toggleValue,
                height: 26,
                width: 43,
                borderRadius: 25,
                toggleSize: 20,
                toggleColor: Colors.white,
                activeColor:
                    toggleValue == true ? Colors.lightGreen : Colors.grey,
                onToggle: ((val) {
                  setState(() {
                    toggleValue = val;
                  });

                  if (toggleValue) {
                    setState(() {
                      calculatingFunds = true;
                    });

                    Timer(Duration(seconds: 5), () {
                      setState(() =>
                          {calculatedFunds = true, calculatingFunds = false});
                      // dynamic state = _menuKey.currentState;
                      // state.showButtonMenu();
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return HomeScreenPopup();
                          });
                    });
                  } else {
                    setState(() {
                      calculatedFunds = false;
                      calculatingFunds = false;
                    });
                  }
                }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
