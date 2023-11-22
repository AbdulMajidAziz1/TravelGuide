import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/atoms/Lines/bottom_line.dart';
import 'package:login/atoms/Lines/popup_line.dart';
import 'package:login/atoms/Pop_ups/travel_bank_popup.dart';
import 'package:login/molecule/all_travels_topup.dart';
import 'package:login/molecule/deadline_assistant.dart';
import 'package:login/molecule/donut_chart.dart';
import 'package:login/molecule/pending_resolutions.dart';
import 'package:login/molecule/pg1_molecule/menu_bar.dart';
import 'package:login/molecule/pg1_molecule/moL2_texts.dart';
import 'package:login/molecule/pg1_molecule/moL4_travel_fund.dart';
import 'package:login/molecule/transactions.dart';
import 'package:login/molecule/travel_bank_selector.dart';

class TravelBankScreen extends StatefulWidget {
  const TravelBankScreen({super.key});

  @override
  State<TravelBankScreen> createState() => TravelBankScreenState();
}

class TravelBankScreenState extends State<TravelBankScreen> {


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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F3F4),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            const MenuBack(
              isHomeScreen: true,
              showJinni: false,
              title: 'Travel Bank',
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Manage your budget for your travels ",
                      style: textS12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TravelBankSelector(),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: 390,
                        height: 330,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            DonutChart(),
                            Text('Your next auto top-up cycle is \$114 on the 20th of February.',
                              style: textS3,
                            )
                          ],
                        )
                    ),
                    SizedBox(
                      height: 24,
                    ),

                    Stack(
                      children: [
                        Container(
                          width: widgetsWidth,
                          height: 237,
                          // height: 496,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text(
                                  "Your upcoming automated travel budget savings plan ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF292929),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      " of ",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "\$7,000",
                                      style: textS614,
                                    ),
                                    Text(
                                      " split in ",
                                      style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "69 top-up cycles",
                                      style: textS614,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Manage top-up",
                                  style: TextStyle(
                                    color: Color(0xFF007AFF),
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 103.25,
                                  width: widgetsWidth - 50,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 12,
                                      itemBuilder: (context, index) {
                                        final progressValue =
                                            (index + 1) * 0.091;
                                        final progressColor = index == 0 ? const Color(0xFF32CB5E) : Colors.black;
                                        if (index == 11) {
                                          return Column(
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                        backgroundColor: Colors.transparent,
                                                        isScrollControlled: true,
                                                        context: context,
                                                        builder: (context) {
                                                          return TravelBankPopup();
                                                        });
                                                    setState(() {

                                                    });
                                                  },
                                                  child: SizedBox(
                                                    width: 52.25,
                                                    height: 52.25,
                                                    child: Container(
                                                      decoration: ShapeDecoration(
                                                        color: const Color(0xFFF3F3F4),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(479.36),
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Container(
                                                          height: 25,
                                                          width: 25,
                                                          decoration: ShapeDecoration(color: Color.fromARGB(255, 255, 255, 255),
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(479.36),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image(
                                                              image: AssetImage('assets/open_details.png'),
                                                              height: 16,
                                                              width: 16,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          );
                                        }

                                        return Row(
                                          children: [
                                            SizedBox(
                                              width: screenWidth < 321 ? 64: 71,
                                              height: 103.25,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 52.25,
                                                    height: 52.25,
                                                    padding: const EdgeInsets.only(top: 5.23,bottom: 5.22,),
                                                    clipBehavior: Clip.antiAlias,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFE6F3E8),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(479.36),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        SizedBox(
                                                          width: 41.80,
                                                          height: 41.80,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  height: 41.8,
                                                                  width: 41.8,
                                                                  child: Center(
                                                                    child: TweenAnimationBuilder<double>(
                                                                      tween: Tween<double>(
                                                                          begin: 0.0,
                                                                          end: progressValue),
                                                                      duration: const Duration(milliseconds: 1000),
                                                                      builder: (context, value, _) => CircularProgressIndicator(
                                                                          strokeWidth: 8,
                                                                          color: progressColor,
                                                                          semanticsLabel: 'Circular progress indicator',
                                                                          value: value),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 7.84,
                                                                top: 7.84,
                                                                child: Container(
                                                                  width: 26.12,
                                                                  height: 26.12,
                                                                  padding: const EdgeInsets.only(top: 5.22, bottom: 4.90),
                                                                  clipBehavior: Clip.antiAlias,
                                                                  decoration: ShapeDecoration(color: Colors.white,
                                                                    shape: RoundedRectangleBorder(borderRadius:
                                                                          BorderRadius.circular(188.10),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Countup(
                                                                        begin: 0,
                                                                        end: index.toDouble() + 1,
                                                                        duration: Duration(seconds: 2),
                                                                        separator:
                                                                            ',',
                                                                        style:
                                                                            TextStyle(
                                                                          color: index == 0
                                                                              ? const Color(0xFF32CB5E) : Colors.black,
                                                                          fontSize:
                                                                              10,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  SizedBox(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          child: Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Text(
                                                                '${allMonths[index]}, 23',
                                                                textAlign: TextAlign.center,
                                                                style:
                                                                  TextStyle(color: Color(0xFF757575),
                                                                  fontSize: screenWidth < 321 ? 9: 10,
                                                                  fontFamily: 'Inter',
                                                                  fontWeight: FontWeight.w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          child: Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Text('£',
                                                                  style: index == 0 ? textS614 : textS14),
                                                              Countup(
                                                                  begin: 0,
                                                                  end: index == 0 ? 350 : 114,
                                                                  duration: Duration(seconds: 2),
                                                                  separator: ',',
                                                                  textAlign: TextAlign.center,
                                                                  style: index == 0 ? textS614 : textS14),
                                                              const SizedBox(width: 4),
                                                              Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(
                                                                      -3.14),
                                                                child: SizedBox(
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            12,
                                                                        height:
                                                                            12,
                                                                        child: Stack(
                                                                            children: [
                                                                              Container(),
                                                                            ]),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 45,
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          right: 12,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Image(
                              image:
                                  AssetImage('assets/arrow-circle-right.png'),
                              height: 20,
                              width: 20,
                            ),
                          ),
                        )
                      ],
                    ),

                    // Expanded(
                    //   child: Container(),
                    // ),

                    const SizedBox(
                      height: 20,
                    ),

                    Transactions(),
                    SizedBox(
                      height: 20,
                    ),
                    PendingResolutions()
                    // const BottomLine(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Row(
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/close.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.5,
                      ),
                      Center(
                        child: Text(
                          "Go back",
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Center(
                      child: Text(
                        "Travel Bank",
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.5,
                    ),
                    Image(
                      image: AssetImage('assets/travel_bank.png'),
                      height: 56,
                      width: 56,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
