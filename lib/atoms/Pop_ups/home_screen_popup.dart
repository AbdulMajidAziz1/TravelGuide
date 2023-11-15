import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:login/atoms/buttons/button_multi_color.dart';

import '../Constant/constant.dart';

class HomeScreenPopup extends StatefulWidget {
  const HomeScreenPopup({super.key});

  @override
  State<HomeScreenPopup> createState() => _HomeScreenPopupState();
}

class _HomeScreenPopupState extends State<HomeScreenPopup> {
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
  final List<double> updatedPlanNumbers = [
    350,
    114,
    114,
    114,
    114,
    35,
    35,
    35,
    35,
    35,
    35,
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 636,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),// Set the top-right radius
        ),
      ),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.end,
        crossAxisAlignment:
        CrossAxisAlignment.center,
        children: [
          Container(
            height: 635,
            width: 375,
            color: Colors.white,
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment
                  .start,
              crossAxisAlignment:
              CrossAxisAlignment
                  .center,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisSize:
                    MainAxisSize
                        .min,
                    mainAxisAlignment:
                    MainAxisAlignment
                        .start,
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .center,
                    children: [
                      Container(
                        height: 12,
                        decoration:
                        const ShapeDecoration(
                          shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius
                                .only(
                              topLeft: Radius
                                  .circular(
                                  16),
                              topRight:
                              Radius.circular(
                                  16),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize:
                          MainAxisSize
                              .min,
                          mainAxisAlignment:
                          MainAxisAlignment
                              .start,
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .center,
                          children: [
                            Container(
                              width:
                              375,
                              height:
                              12,
                              padding: const EdgeInsets
                                  .only(
                                  top:
                                  8),
                              child:
                              Row(
                                mainAxisSize:
                                MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                    38,
                                    height:
                                    4,
                                    decoration:
                                    ShapeDecoration(
                                      color: const Color(0xFFE2E2E2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
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
                    height: 12),
                SizedBox(
                  child: Column(
                    mainAxisSize:
                    MainAxisSize
                        .min,
                    mainAxisAlignment:
                    MainAxisAlignment
                        .start,
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .center,
                    children: [
                      const SizedBox(
                        child: Column(
                          mainAxisSize:
                          MainAxisSize
                              .min,
                          mainAxisAlignment:
                          MainAxisAlignment
                              .start,
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .center,
                          children: [
                            Text(
                              'Funding plan updated',
                              textAlign:
                              TextAlign
                                  .center,
                              style:
                              TextStyle(
                                color: Color(
                                    0xFF292929),
                                fontSize:
                                16,
                                fontFamily:
                                'Inter',
                                fontWeight:
                                FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                                height:
                                12),
                            Text(
                              'Funding plan with estimated budget for the entire trip',
                              textAlign:
                              TextAlign
                                  .center,
                              style:
                              TextStyle(
                                color: Color(
                                    0xFF757575),
                                fontSize:
                                12,
                                fontFamily:
                                'Inter',
                                fontWeight:
                                FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width:
                        screenWidth,
                        child:
                        Container(
                          decoration:
                          ShapeDecoration(
                            color: const Color(
                                0xFFFBFBFC),
                            shape:
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(
                                  8),
                            ),
                          ),
                          child:
                          Padding(
                            padding: EdgeInsets
                                .fromLTRB(
                                0,
                                12,
                                0,
                                20),
                            child:
                            Column(
                              children: [
                                const SizedBox(
                                  width:
                                  381,
                                  child:
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Previous funding cycle for ',
                                          style: TextStyle(
                                            color: Color(0xFF757575),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Fly easy',
                                          style: TextStyle(
                                            color: Color(0xFF757575),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' payment only',
                                          style: TextStyle(
                                            color: Color(0xFF757575),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height:
                                  20,
                                ),
                                SizedBox(
                                  height:
                                  103.25,
                                  width:
                                  screenWidth - 100,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 11,
                                      itemBuilder: (context, index) {
                                        final progressValue = (index + 1) * 0.091;
                                        final progressColor = index == 0 ? const Color(0xFF32CB5E) : Colors.black;

                                        return Row(
                                          children: [
                                            SizedBox(
                                              width: 75,
                                              height: 103.25,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 52.25,
                                                    height: 52.25,
                                                    padding: const EdgeInsets.only(
                                                      top: 5.23,
                                                      left: 5.23,
                                                      right: 5.22,
                                                      bottom: 5.22,
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
                                                                      tween: Tween<double>(begin: 0.0, end: progressValue),
                                                                      duration: const Duration(milliseconds: 1000),
                                                                      builder: (context, value, _) => CircularProgressIndicator(strokeWidth: 8, color: progressColor, semanticsLabel: 'Circular progress indicator', value: value),
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
                                                                  decoration: ShapeDecoration(
                                                                    color: Colors.white,
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(188.10),
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
                                                                          separator: ',',
                                                                        style: TextStyle(
                                                                          color: index == 0 ? const Color(0xFF32CB5E) : Colors.black,
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
                                                  const SizedBox(height: 12),
                                                  SizedBox(
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                style: TextStyle(
                                                                  color: Color(0xFF757575),
                                                                  fontSize: 10,
                                                                  fontFamily: 'Inter',
                                                                  fontWeight: FontWeight.w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(height: 4),
                                                        SizedBox(
                                                          child: Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Text('£',
                                                                  style: index == 0 ? textS614 : textS14
                                                              ),
                                                              Countup(
                                                                  begin: 0,
                                                                  end: updatedPlanNumbers[index],
                                                                  duration: Duration(seconds: 2),
                                                                  separator: ',',
                                                                  style: index == 0 ? textS614 : textS14
                                                              ),
                                                              const SizedBox(width: 4),
                                                              Transform(
                                                                transform: Matrix4.identity()
                                                                  ..translate(0.0, 0.0)
                                                                  ..rotateZ(-3.14),
                                                                child: SizedBox(
                                                                  width: 12,
                                                                  height: 12,
                                                                  child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      SizedBox(
                                                                        width: 12,
                                                                        height: 12,
                                                                        child: Stack(children: [
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
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const SizedBox(
                        width: 281,
                        child: Text(
                          'New funding cycle for the entire trip ',
                          textAlign:
                          TextAlign
                              .center,
                          style:
                          TextStyle(
                            color: Color(
                                0xFF757575),
                            fontSize:
                            12,
                            fontFamily:
                            'Inter',
                            fontWeight:
                            FontWeight
                                .w600,
                            height:
                            0.12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        width: 335,
                        height: 65,
                        child: Column(
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
                            Text(
                              'Your estimated budget funding plan of',
                              textAlign:
                              TextAlign
                                  .center,
                              style:
                              TextStyle(
                                color: Color(
                                    0xFF292929),
                                fontSize:
                                14,
                                fontFamily:
                                'Inter',
                                fontWeight:
                                FontWeight.w400,
                                height:
                                0.10,
                              ),
                            ),
                            SizedBox(
                                height:
                                4),
                            SizedBox(
                              child:
                              Column(
                                mainAxisSize:
                                MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '£800',
                                          style: TextStyle(
                                            color: Color(0xFF292929),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' split ',
                                          style: TextStyle(
                                            color: Color(0xFF292929),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'in',
                                          style: TextStyle(
                                            color: Color(0xFF292929),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 9 top-up cycles',
                                          style: TextStyle(
                                            color: Color(0xFF292929),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                  SizedBox(
                                      height: 4),
                                  Text(
                                    '(Monthly on the last Friday)',
                                    textAlign:
                                    TextAlign.center,
                                    style:
                                    TextStyle(
                                      color: Color(0xFF007AFF),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 103.25,
                        width:
                        screenWidth -
                            100,
                        child: ListView
                            .builder(
                            scrollDirection:
                            Axis
                                .horizontal,
                            itemCount:
                            11,
                            itemBuilder:
                                (context,
                                index) {
                              final progressValue =
                                  (index + 1) * 0.091;
                              final progressColor = index == 0
                                  ? const Color(0xFF32CB5E)
                                  : Colors.black;
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 75,
                                    height: 103.25,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 52.25,
                                          height: 52.25,
                                          padding: const EdgeInsets.only(
                                            top: 5.23,
                                            left: 5.23,
                                            right: 5.22,
                                            bottom: 5.22,
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
                                                            tween: Tween<double>(begin: 0.0, end: progressValue),
                                                            duration: const Duration(milliseconds: 1000),
                                                            builder: (context, value, _) => CircularProgressIndicator(strokeWidth: 8, color: progressColor, semanticsLabel: 'Circular progress indicator', value: value),
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
                                                        decoration: ShapeDecoration(
                                                          color: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(188.10),
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
                                                              separator: ',',
                                                              style: TextStyle(
                                                                color: index == 0 ? const Color(0xFF32CB5E) : Colors.black,
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
                                        const SizedBox(height: 12),
                                        SizedBox(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                                      style: TextStyle(
                                                        color: Color(0xFF757575),
                                                        fontSize: 10,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              SizedBox(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text('£',
                                                        style: index == 0 ? textS614 : textS14
                                                    ),
                                                    Countup(
                                                        begin: 0,
                                                        end: updatedPlanNumbers[index],
                                                        duration: Duration(seconds: 2),
                                                        separator: ',',
                                                        style: index == 0 ? textS614 : textS14
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Transform(
                                                      transform: Matrix4.identity()
                                                        ..translate(0.0, 0.0)
                                                        ..rotateZ(-3.14),
                                                      child: SizedBox(
                                                        width: 12,
                                                        height: 12,
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            SizedBox(
                                                              width: 12,
                                                              height: 12,
                                                              child: Stack(children: [
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
                      const SizedBox(
                        height: 32,
                      ),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: ButtonMulti(title: 'Next'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
