import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:login/atoms/Pop_ups/automated_popup.dart';
import 'package:login/atoms/Pop_ups/home_screen_popup.dart';
import 'package:login/atoms/calculating_funds.dart';
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
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                width: 344,
                height: 196,
                decoration: BoxDecoration(
                  color: Color(0xffFBFBFC),
                  border: Border.all(color: const Color(0xffF3F3F4), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18, left: 16),
                          child: Text(
                            'Travel buddies trip commitment',
                            style: textS612,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      width: 312,
                      height: 58,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.money_sharp,
                            color: Color(0xff757575),
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                            child: SizedBox(
                              height: 58,
                              width: 37,
                              child: Column(
                                children: [
                                  CircularImg(
                                      pathP: 'assets/wonder.png',
                                      color1: Color(0xff883D1A),
                                      width1: 32,
                                      height1: 32
                                  ),
                                  Text('Wonder\n Safari',
                                    style: textS907,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 34,
                            width: 246,
                            child: Text(
                              'Set \$350 for all buddies to make deposit\n payment towards flight',
                              style: textS1,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffF3F3F4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'Your automated trip funding plan of \$1,265',
                            style: textS612,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 312,
                      height: 47,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Icon(
                                  Icons.access_alarm,
                                  color: Color(0xff757575),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 34,
                            width: 242,
                            child: Text(
                              'Split in 11 top-up cycles on the last Friday\n of every month.',
                              style: textS1,
                            ),
                          ),
                          GestureDetector(
                              onTap: (){
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return AutomatedPopup();
                                  }
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Text(
                                  'Change',
                                  style: textS2,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Text(
                'Funds will not be taken from your account if the minimum ',
                style: textS1,
              ),
              Text(
                'number of 8 travellers is not reached! ',
                style: textS1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
