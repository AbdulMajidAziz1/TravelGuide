import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../molecule/deadline_assistant.dart';
import '../Lines/popup_line.dart';

class TravelBankPopup extends StatefulWidget {
  const TravelBankPopup({super.key});

  @override
  State<TravelBankPopup> createState() => TravelBankPopupState();
}

class TravelBankPopupState extends State<TravelBankPopup> {
  static const String KEYLOGIN = "login";
  var istrue;

  @override
  void initState(){
    whereTo();
  }

  void whereTo() async{
    var share = await SharedPreferences.getInstance();
    setState(() {
      istrue = share.getBool(KEYLOGIN);
    });
    print(share.getBool(KEYLOGIN));
  }
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
    final widgetsHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 710,
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
                      height: 65,
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
                                    width: 175,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                istrue == true ? "\$1520": "£0",
                                                style: TextStyle(
                                                  color: istrue == true ? Color(0xFF007AFF) : Color(0xFFD0D0D5),
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
                                                istrue == true ? "\$800": "£0",
                                                style: TextStyle(
                                                  color: istrue == true ? Color(0xFF007AFF) : Color(0xFFD0D0D5),
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
                                                istrue == true ? "\$400": "£0",
                                                style: TextStyle(
                                                  color: istrue == true ? Color(0xFF007AFF) : Color(0xFFD0D0D5),
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
                                    width: 175,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                istrue == true ? "0%" : "38%",
                                                style: TextStyle(
                                                  color: istrue == true ? Color(0xFF007AFF) : Color(0xFFD0D0D5),
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
                                                istrue == true ? "20%": "0%" ,
                                                style: TextStyle(
                                                  color: istrue == true ?  Color(0xFF007AFF): Color(0xFFD0D0D5),
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
                                                istrue == true ?  "32%":"100%",
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
                                                istrue == true ? "10%":"0%" ,
                                                style: TextStyle(
                                                  color: istrue == true ? Color(0xFF007AFF) : Color(0xFFD0D0D5),
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
