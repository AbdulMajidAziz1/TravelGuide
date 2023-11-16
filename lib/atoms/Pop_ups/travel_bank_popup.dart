import 'package:flutter/material.dart';

import '../../molecule/deadline_assistant.dart';
import '../Lines/popup_line.dart';

class TravelBankPopup extends StatefulWidget {
  const TravelBankPopup({super.key});

  @override
  State<TravelBankPopup> createState() => _TravelBankPopupState();
}

class _TravelBankPopupState extends State<TravelBankPopup> {
  @override
  Widget build(BuildContext context) {
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

    final widgetsWidth = MediaQuery.of(context).size.width - 16;
    final screenWidth = MediaQuery.of(context).size.width;
    final widgetsHeight = MediaQuery.of(context).size.height - 16;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: widgetsHeight * 0.9,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PopupLine(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Atlanta trip deadline assistant",
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 53,
                      width: screenWidth - 30,
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F3F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "11 top-up cycles",
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/my_flight.png'),
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "Flight",
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/Accomodation.png'),
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "Stays",
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/binoculars.png'),
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "Activities",
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/my_food.png'),
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "Meals...",
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    DeadLineAssistant(),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: screenWidth - 30,
                      height: 72,
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Color(0xFFFBFBFC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Trip budget",
                                        style: TextStyle(
                                          color: Color(0xFF292929),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    width: 185,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "\$1520",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "\$800",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "\$1262",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "\$400",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: SizedBox(
                                width: screenWidth - 46,
                                height: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF3F3F4))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Budget split %",
                                        style: TextStyle(
                                          color: Color(0xFF292929),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    width: 185,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "38%",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "20%",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "32%",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "10%",
                                                style: TextStyle(
                                                  color: Color(0xFF007AFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        // add here
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
