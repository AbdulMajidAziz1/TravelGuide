import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/atoms/Divider/divider.dart';
import 'package:login/atoms/Lines/bottom_line.dart';
import 'package:login/atoms/Lines/empty_line.dart';
import 'package:login/atoms/Lines/single_line.dart';
import 'package:login/atoms/buttons/add_button_border.dart';
import 'package:login/atoms/circular_img.dart';
import 'package:login/molecule/pg1_molecule/menu_bar.dart';
import 'dart:async';

import 'package:login/pages/travel_bank.dart';

class FundingPlan extends StatefulWidget {
  const FundingPlan({super.key});

  @override
  State<FundingPlan> createState() => _FundingPlanState();
}

class _FundingPlanState extends State<FundingPlan> {
  var buddiesJoined = 7;
  var _timer;
  @override
  void initState() {
    _timer = Timer.periodic(
        Duration(seconds: 2),
        (timer) => {
              if (buddiesJoined < 8)
                {setState(() => buddiesJoined = buddiesJoined + 1)}
              else
                {
                  timer.cancel(),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TravelBankScreen()
                      )
                  ),
                }
            });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          MenuBack(
            isHomeScreen: false,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Trip will be created when the ',
            style: textS414G,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            width: 375,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                  width: 287,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'minimum number of ',
                        style: textS414G,
                      ),
                      Text(
                        '8 travellers ',
                        style: textS414B,
                      ),
                      Text(
                        'is reached!',
                        style: textS414G,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Change',
                  style: textS2,
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 130,
                  child: const Stack(
                    children: [
                      CircularImg(
                          pathP: 'assets/image 1.png',
                          color1: Color(0xff94D0E4),
                          width1: 40,
                          height1: 40),
                      Positioned(
                          left: 20,
                          child: CircularImg(
                              pathP: 'assets/image 2.png',
                              color1: Color(0xffFFB292),
                              width1: 40,
                              height1: 40)),
                      Positioned(
                          left: 40,
                          child: CircularImg(
                              pathP: 'assets/image 3.png',
                              color1: Color(0xffFFBAE9),
                              width1: 40,
                              height1: 40)),
                      Positioned(
                          left: 60,
                          child: CircularImg(
                              pathP: 'assets/image 4.png',
                              color1: Color(0xffE7BF9F),
                              width1: 40,
                              height1: 40)),
                      Positioned(
                          left: 80,
                          child: CircularImg(
                              pathP: 'assets/image 5.png',
                              color1: Color(0xff59E1FF),
                              width1: 40,
                              height1: 40)),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 130,
                  child: const Stack(
                    children: [
                      CircularImg(
                          pathP: 'assets/image 6.png',
                          color1: Color(0xffC4C4C4),
                          width1: 40,
                          height1: 40),
                      Positioned(
                          left: 27,
                          child: CircularImg(
                              pathP: 'assets/image 7.png',
                              color1: Color(0xffC4C4C4),
                              width1: 40,
                              height1: 40)),
                      Positioned(
                          left: 55,
                          child: CircularImg(
                              pathP: 'assets/image 8.png',
                              color1: Color(0xffDDDDDD),
                              width1: 40,
                              height1: 40)),
                      Positioned(
                          left: 85,
                          child: CircularImg(
                              pathP: 'assets/image 9.png',
                              color1: Color(0xffC4C4C4),
                              width1: 40,
                              height1: 40)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 40,
              width: 300,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 0),
                    child: Text(
                      '14 buddies invited',
                      style: textS410B,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 70, top: 0),
                    child: Text(
                      '4 buddies unavailable ',
                      style: textS410B,
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Invite more travel buddies to join trip',
            style: textS414G,
          ),
          const SizedBox(
            height: 10,
          ),
          const Add_Button(),
          const Text(
            'Invite buddies',
            style: textS1,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Waiting for ${8 - buddiesJoined} more buddies to join the trip',
            style: textS616B,
          ),
          const SizedBox(
            height: 15,
          ),
          const DividerHor(),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 4,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SingleLine(),
                buddiesJoined >= 3 ? SingleLine() : EmptyLine(),
                buddiesJoined >= 4 ? SingleLine() : EmptyLine(),
                buddiesJoined >= 6 ? SingleLine() : EmptyLine(),
                buddiesJoined >= 8 ? SingleLine() : EmptyLine(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 166,
            // constraints: BoxConstraints(
            //     maxWidth: 200, // Set your maximum width here

            //     minWidth: 166),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const CircularImg(
                        pathP: 'assets/image 4.png',
                        color1: Color(0xffE7BF9F),
                        width1: 30,
                        height1: 30),
                    Text(
                      'Paul',
                      style: textS9043,
                    ),
                  ],
                ),
                buddiesJoined >= 2
                    ? Column(
                        children: [
                          const CircularImg(
                              pathP: 'assets/image 10.png',
                              color1: Color(0xffFFBB59),
                              width1: 30,
                              height1: 30),
                          Text(
                            'Steve',
                            style: textS9043,
                          ),
                        ],
                      )
                    : Container(),
                buddiesJoined >= 3
                    ? Column(
                        children: [
                          const CircularImg(
                              pathP: 'assets/image 3.png',
                              color1: Color(0xffFFBAE9),
                              width1: 30,
                              height1: 30),
                          Text(
                            'Paula',
                            style: textS9043,
                          ),
                        ],
                      )
                    : Container(),
                buddiesJoined >= 4
                    ? Container(
                        width: 60,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                CircularImg(
                                    pathP: 'assets/image 1.png',
                                    color1: Color(0xff94D0E4),
                                    width1: 30,
                                    height1: 30),
                                Text(
                                  '    +${buddiesJoined - 3} others',
                                  style: textS9043,
                                ),
                              ],
                            ),
                            buddiesJoined >= 5
                                ? Positioned(
                                    left: 35,
                                    child: CircularImg(
                                        pathP: 'assets/image 2.png',
                                        color1: Color(0xffFFB292),
                                        width1: 30,
                                        height1: 30))
                                : Container(),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          // Container(
          //   height: 15,
          //   width: 150,
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'Paul',
          //         style: textS9043,
          //       ),
          //       Text(
          //         'Steve',
          //         style: textS9043,
          //       ),
          //       Text(
          //         'Paula',
          //         style: textS9043,
          //       ),
          //       Text(
          //         '+3 others',
          //         style: textS9043,
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'Trip to New York & Atlanta',
            style: textS614,
          ),
          const SizedBox(
            height: 70,
          ),
          const BottomLine()
        ],
      ),
    ));
  }
}
