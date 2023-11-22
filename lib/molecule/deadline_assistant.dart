import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../atoms/Constant/constant.dart';

class DeadLineAssistant extends StatefulWidget {
  const DeadLineAssistant({super.key});

  @override
  State<DeadLineAssistant> createState() => DeadLineAssistantState();
}

class DeadLineAssistantState extends State<DeadLineAssistant> {
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
    final fullWidth = MediaQuery.of(context).size.width;

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
    final List<Map<String, dynamic>> previousPlanData = [
      {
        'total': 350,
        'flight': 0,
        'stays': 0,
        'activities': 350,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
      {
        'total': 101,
        'flight': 0,
        'stays': 0,
        'activities': 101,
        'meals': 0,
      },
    ];

    final List<Map<String, dynamic>> updatedPlanData = [
      {
        'total': 350,
        'flight': 0,
        'stays': 0,
        'activities': 350,
        'meals': 0,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
      {
        'total': 403,
        'flight': 169,
        'stays': 89,
        'activities': 101,
        'meals': 44,
      },
    ];


    return SizedBox(
      width: fullWidth,
      height: 500,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 11,
          itemBuilder: (context, index) {
            final progressValue = (index + 1) * 0.091;
            final progressColor =
            index == 0 ? const Color(0xFF32CB5E) : Colors.black;

            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: fullWidth - 23,
                  height: 39,
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.only(
                                  top: 4.5,
                                  left: 4.5,
                                  right: 4.5,
                                  bottom: 4.5,
                                ),
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
                                      width: 25,
                                      height: 25,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: Center(
                                                child:
                                                TweenAnimationBuilder<double>(
                                                  tween: Tween<double>(
                                                      begin: 0.0,
                                                      end: progressValue),
                                                  duration: const Duration(
                                                      milliseconds: 1000),
                                                  builder: (context, value, _) =>
                                                      CircularProgressIndicator(
                                                          strokeWidth: 8,
                                                          color: progressColor,
                                                          semanticsLabel:
                                                          'Circular progress indicator',
                                                          value: value),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 2.84,
                                            top: 2.84,
                                            child: Container(
                                              width: 17,
                                              height: 17,
                                              padding: const EdgeInsets.only(
                                                  top: 2.22, bottom: 4.90),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(188.10),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Countup(
                                                    begin: 0,
                                                    end: index.toDouble() + 1,
                                                    duration: Duration(seconds: 2),
                                                    separator: ',',
                                                    style: TextStyle(
                                                      color: index == 0
                                                          ? const Color(0xFF32CB5E)
                                                          : Colors.black,
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w600,
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
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${allMonths[index]}, 23",
                                    style: TextStyle(
                                      color: Color(0xFF757575),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text('£', style: textS614),

                                      istrue == true ? Countup(
                                          begin: 0,
                                          end: index == 0 ? updatedPlanData[0]['total'].toDouble() :
                                          index == 1 ? updatedPlanData[1]['total'].toDouble() :
                                          index == 2 ? updatedPlanData[2]['total'].toDouble() :
                                          index == 3 ? updatedPlanData[3]['total'].toDouble() :
                                          index == 4 ? updatedPlanData[4]['total'].toDouble() :
                                          index == 5 ? updatedPlanData[5]['total'].toDouble() :
                                          index == 6 ? updatedPlanData[6]['total'].toDouble() :
                                          index == 7 ? updatedPlanData[7]['total'].toDouble() :
                                          index == 8 ? updatedPlanData[8]['total'].toDouble() :
                                          index == 9 ? updatedPlanData[9]['total'].toDouble() :
                                          index == 10 ? updatedPlanData[10]['total'].toDouble() : updatedPlanData[11]['total'].toDouble(),
                                          duration: Duration(seconds: 2),
                                          separator: ',',
                                          style: textS614) :
                                      Countup(
                                          begin: 0,
                                          end: index == 0 ? previousPlanData[0]['total'].toDouble() :
                                          index == 1 ? previousPlanData[1]['total'].toDouble() :
                                          index == 2 ? previousPlanData[2]['total'].toDouble() :
                                          index == 3 ? previousPlanData[3]['total'].toDouble() :
                                          index == 4 ? previousPlanData[4]['total'].toDouble() :
                                          index == 5 ? previousPlanData[5]['total'].toDouble() :
                                          index == 6 ? previousPlanData[6]['total'].toDouble() :
                                          index == 7 ? previousPlanData[7]['total'].toDouble() :
                                          index == 8 ? previousPlanData[8]['total'].toDouble() :
                                          index == 9 ? previousPlanData[9]['total'].toDouble() :
                                          index == 10 ? previousPlanData[10]['total'].toDouble() : previousPlanData[11]['total'].toDouble(),
                                          duration: Duration(seconds: 2),
                                          separator: ',',
                                          style: textS614)
                                      ,
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: SizedBox(
                          width: 169,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    istrue == true ? Text("£${
                                        index == 0 ? updatedPlanData[0]['flight'] :
                                        index == 1 ? updatedPlanData[1]['flight'] :
                                        index == 2 ? updatedPlanData[2]['flight'] :
                                        index == 3 ? updatedPlanData[3]['flight'] :
                                        index == 4 ? updatedPlanData[4]['flight'] :
                                        index == 5 ? updatedPlanData[5]['flight'] :
                                        index == 6 ? updatedPlanData[6]['flight'] :
                                        index == 7 ? updatedPlanData[7]['flight'] :
                                        index == 8 ? updatedPlanData[8]['flight'] :
                                        index == 9 ? updatedPlanData[9]['flight'] :
                                        index == 10 ? updatedPlanData[10]['flight'] : updatedPlanData[11]['flight']
                                    } ",
                                      style: TextStyle(
                                        color: index == 0 ? Color(0xFFD0D0D5) : Color(0xFF757575,),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ) :
                                    Text("£${
                                        index == 0 ? previousPlanData[0]['flight'] :
                                        index == 1 ? previousPlanData[1]['flight'] :
                                        index == 2 ? previousPlanData[2]['flight'] :
                                        index == 3 ? previousPlanData[3]['flight'] :
                                        index == 4 ? previousPlanData[4]['flight'] :
                                        index == 5 ? previousPlanData[5]['flight'] :
                                        index == 6 ? previousPlanData[6]['flight'] :
                                        index == 7 ? previousPlanData[7]['flight'] :
                                        index == 8 ? previousPlanData[8]['flight'] :
                                        index == 9 ? previousPlanData[9]['flight'] :
                                        index == 10 ? previousPlanData[10]['flight'] : previousPlanData[11]['flight']
                                    } ",
                                      style: TextStyle(
                                        color: Color(0xFFD0D0D5),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    istrue == true ? Text("£${
                                        index == 0 ? updatedPlanData[0]['stays'] :
                                        index == 1 ? updatedPlanData[1]['stays'] :
                                        index == 2 ? updatedPlanData[2]['stays'] :
                                        index == 3 ? updatedPlanData[3]['stays'] :
                                        index == 4 ? updatedPlanData[4]['stays'] :
                                        index == 5 ? updatedPlanData[5]['stays'] :
                                        index == 6 ? updatedPlanData[6]['stays'] :
                                        index == 7 ? updatedPlanData[7]['stays'] :
                                        index == 8 ? updatedPlanData[8]['stays'] :
                                        index == 9 ? updatedPlanData[9]['stays'] :
                                        index == 10 ? updatedPlanData[10]['stays'] : updatedPlanData[11]['stays']} ",
                                      style: TextStyle(
                                        color: index == 0 ? Color(0xFFD0D0D5) : Color(0xFF757575,),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ) :
                                    Text("£${
                                        index == 0 ? previousPlanData[0]['stays'] :
                                        index == 1 ? previousPlanData[1]['stays'] :
                                        index == 2 ? previousPlanData[2]['stays'] :
                                        index == 3 ? previousPlanData[3]['stays'] :
                                        index == 4 ? previousPlanData[4]['stays'] :
                                        index == 5 ? previousPlanData[5]['stays'] :
                                        index == 6 ? previousPlanData[6]['stays'] :
                                        index == 7 ? previousPlanData[7]['stays'] :
                                        index == 8 ? previousPlanData[8]['stays'] :
                                        index == 9 ? previousPlanData[9]['stays'] :
                                        index == 10 ? previousPlanData[10]['stays'] : previousPlanData[11]['stays']} ",
                                      style: TextStyle(
                                        color: Color(0xFFD0D0D5),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    istrue == true ? Text("£${
                                        index == 0 ? updatedPlanData[0]['activities'] :
                                        index == 1 ? updatedPlanData[1]['activities'] :
                                        index == 2 ? updatedPlanData[2]['activities'] :
                                        index == 3 ? updatedPlanData[3]['activities'] :
                                        index == 4 ? updatedPlanData[4]['activities'] :
                                        index == 5 ? updatedPlanData[5]['activities'] :
                                        index == 6 ? updatedPlanData[6]['activities'] :
                                        index == 7 ? updatedPlanData[7]['activities'] :
                                        index == 8 ? updatedPlanData[8]['activities'] :
                                        index == 9 ? updatedPlanData[9]['activities'] :
                                        index == 10 ? updatedPlanData[10]['activities'] : updatedPlanData[11]['activities']}",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ) :
                                    Text("£${
                                        index == 0 ? previousPlanData[0]['activities'] :
                                        index == 1 ? previousPlanData[1]['activities'] :
                                        index == 2 ? previousPlanData[2]['activities'] :
                                        index == 3 ? previousPlanData[3]['activities'] :
                                        index == 4 ? previousPlanData[4]['activities'] :
                                        index == 5 ? previousPlanData[5]['activities'] :
                                        index == 6 ? previousPlanData[6]['activities'] :
                                        index == 7 ? previousPlanData[7]['activities'] :
                                        index == 8 ? previousPlanData[8]['activities'] :
                                        index == 9 ? previousPlanData[9]['activities'] :
                                        index == 10 ? previousPlanData[10]['activities'] : previousPlanData[11]['activities'] }",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                    ,
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    istrue == true ? Text("£${
                                        index == 0 ? updatedPlanData[0]['meals'] :
                                        index == 1 ? updatedPlanData[1]['meals'] :
                                        index == 2 ? updatedPlanData[2]['meals'] :
                                        index == 3 ? updatedPlanData[3]['meals'] :
                                        index == 4 ? updatedPlanData[4]['meals'] :
                                        index == 5 ? updatedPlanData[5]['meals'] :
                                        index == 6 ? updatedPlanData[6]['meals'] :
                                        index == 7 ? updatedPlanData[7]['meals'] :
                                        index == 8 ? updatedPlanData[8]['meals'] :
                                        index == 9 ? updatedPlanData[9]['meals'] :
                                        index == 10 ? updatedPlanData[10]['meals'] : updatedPlanData[11]['meals']}",
                                      style: TextStyle(
                                        color: index == 0 ? Color(0xFFD0D0D5) : Color(0xFF757575,),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ) :
                                    Text("£${
                                        index == 0 ? previousPlanData[0]['meals'] :
                                        index == 1 ? previousPlanData[1]['meals'] :
                                        index == 2 ? previousPlanData[2]['meals'] :
                                        index == 3 ? previousPlanData[3]['meals'] :
                                        index == 4 ? previousPlanData[4]['meals'] :
                                        index == 5 ? previousPlanData[5]['meals'] :
                                        index == 6 ? previousPlanData[6]['meals'] :
                                        index == 7 ? previousPlanData[7]['meals'] :
                                        index == 8 ? previousPlanData[8]['meals'] :
                                        index == 9 ? previousPlanData[9]['meals'] :
                                        index == 10 ? previousPlanData[10]['meals'] : previousPlanData[11]['meals']} ",
                                      style: TextStyle(
                                        color: Color(0xFFD0D0D5),
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
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: fullWidth,
                  height: 1,
                  child: Container(
                      decoration: BoxDecoration(color: Color(0xFFF3F3F4))),
                )
              ],
            );
          }),
    );
  }
}
