import 'dart:async';

import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/atoms/Lines/bottom_line.dart';
import 'package:login/molecule/pg1_molecule/menu_bar.dart';
import 'package:login/molecule/pg1_molecule/moL2_texts.dart';
import 'package:login/molecule/pg1_molecule/moL4_travel_fund.dart';
import 'package:login/molecule/pg1_molecule/trip_commitment.dart';
import 'package:login/pages/funding_plan.dart';
import '../atoms/Pop_ups/home_screen_popup.dart';
import '../atoms/budget_selector.dart';
import '../atoms/buttons/button_multi_color.dart';
import '../atoms/calculating_funds.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [

              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    const MenuBack(
                      isHomeScreen: true,
                    ),
                    SizedBox(
                      height: 24
                    ),
                    Column(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('£',
                                    style: textS632B
                                ),
                                Countup(
                                  begin: 0,
                                  end: 1262,
                                  duration: Duration(seconds: 1),
                                  separator: ',',
                                    style: textS632B
                                ),
                              ],
                            ),
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
                    )
                  ],
                ),
              ),
              Expanded(
                flex: toggleValue == false ? 5 : 2,
                child: SingleChildScrollView(
                  child: TripCommitment(),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    SizedBox(height: toggleValue == false ? 25 : 40,),
                    Text(
                      'Funds will not be taken from your account if the minimum ',
                      style: textS1,
                    ),
                    Text(
                      'number of 8 travellers is not reached! ',
                      style: textS1,
                    ),
                    SizedBox(height: toggleValue == false ? 20 : 25,),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FundingPlan()));
                        },
                        child: ButtonMulti(title: 'Save wish & view funding plan')),
                  ],
                ),
              )
              // const BottomLine(),
            ],
          )),
    );
  }
}
