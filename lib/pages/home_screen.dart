import 'dart:async';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/molecule/pg1_molecule/menu_bar.dart';
import 'package:login/pages/funding_plan.dart';
import 'package:login/pages/travel_bank.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../atoms/Pop_ups/automated_popup.dart';
import '../atoms/Pop_ups/automated_popup_2.dart';
import '../atoms/Pop_ups/home_screen_popup.dart';
import '../atoms/Pop_ups/travel_bank_popup.dart';
import '../atoms/budget_selector.dart';
import '../atoms/buttons/button_multi_color.dart';
import '../atoms/calculating_funds.dart';
import '../atoms/circular_img.dart';
import '../molecule/deadline_assistant.dart';

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
              Column(
                children: [
                  const MenuBack(
                    isHomeScreen: true,
                  ),
                  SizedBox(height: 24),
                  Column(
                    children: [
                      calculatingFunds
                          ? CalculatingFunds()
                          : !calculatedFunds
                              ? Column(
                                  children: [
                                    Text('Setup Successful! ',
                                        style: textS617B),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Your share of funding plan has been created. ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        color: Color(0xff222222)
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text('Your Share ', style: textS1),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('£', style: textS632B),
                                        Countup(
                                            begin: 0,
                                            end: 1262,
                                            duration: Duration(seconds: 1),
                                            separator: ',',
                                            style: textS632B),
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
                              activeColor: toggleValue == true ? Colors.lightGreen : Colors.grey,
                              onToggle: ((val) {
                                setState(() {
                                  toggleValue = val;
                                });

                                if (toggleValue) {
                                  setState(() {
                                    calculatingFunds = true;
                                  });

                                  Timer(Duration(seconds: 5), () {
                                    setState(() => {
                                          calculatedFunds = true,
                                          calculatingFunds = false
                                        });
                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) {
                                          return HomeScreenPopup();
                                        }
                                    );
                                    // showModalBottomSheet(
                                    //     backgroundColor: Colors.transparent,
                                    //     isScrollControlled: true,
                                    //     context: context,
                                    //     builder: (context) {
                                    //       return HomeScreenPopup();
                                    //     }
                                    //   );
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
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(child: Container(
                      width: screenWidth - 40,
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
                          SizedBox(
                            width: screenWidth - 72,
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
                                            height1: 32),
                                        Text(
                                          'Wonder\n Safari',
                                          style: textS907,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  // height: 34,
                                  // width: 110,
                                  child: Text(
                                    'Set \$350 for all buddies to make deposit payment towards flight',
                                    style: textS1,
                                    textAlign: TextAlign.center,
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Your automated trip funding plan of \$1,265',
                                  style: textS612,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth - 72,
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
                                Expanded(
                                  child: Text(
                                    'Split in 11 top-up cycles on the last Friday of every month.',
                                    style: textS1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          context: context,
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          builder: (context) {
                                            return toggleValue == false ? AutomatedPopup() : AutomatedPopup2();
                                          });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 12),
                                      child: Text(
                                        'Change',
                                        style: textS2,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Funds will not be taken from your account if the minimum number of 8 travellers is not reached! ',
                          style: textS1,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '',
                          style: textS1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: toggleValue == false ? 20 : 25,
                  ),
                  GestureDetector(
                      onTap: () async {
                        setState(() {

                        });
                        var shareP = await SharedPreferences.getInstance();
                        shareP.setBool(DeadLineAssistantState.KEYLOGIN, toggleValue);
                        var shareP2 = await SharedPreferences.getInstance();
                        shareP2.setBool(TravelBankPopupState.KEYLOGIN, toggleValue);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FundingPlan()
                            )
                        );
                      },
                      child:
                          ButtonMulti(title: 'Save wish & view funding plan')),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
              // const BottomLine(),
            ],
          )),
    );
  }
}
