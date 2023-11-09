import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';

import '../buttons/button_multi_color.dart';
import '../circular_img.dart';

class AutomatedPopup extends StatefulWidget {
  const AutomatedPopup({super.key});

  @override
  State<AutomatedPopup> createState() => _AutomatedPopupState();
}

class _AutomatedPopupState extends State<AutomatedPopup> {
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
    '£350',
    '£114',
    '£114',
    '£114',
    '£114',
    '£35',
    '£35',
    '£35',
    '£35',
    '£35',
    '£35',
  ];
  final updatedPlanNumbers = [
    '£350',
    '£456',
    '£456',
    '£114',
    '£114',
    '£35',
    '£35',
    '£35',
    '£35',
    '£35',
    '£35',
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 607,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 605,
            width: 375,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 12,
                        decoration: const ShapeDecoration(shape:
                          RoundedRectangleBorder(borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 375,
                              height: 12,
                              padding: const EdgeInsets.only(
                                  top: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 38,
                                    height: 4,
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
                const SizedBox(height: 12),
                SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Funding plan updated',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF292929),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 12),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: screenWidth,
                        child: Container(
                          height: 293,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: Color(0xffFBFBFC),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffF3F3F4)
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 20),
                            child: Column(
                              children: [
                                const SizedBox(
                                  width: 335,
                                  height: 65,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Your trip budget funding plan of',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF292929),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.10,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      SizedBox(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '£1,262',
                                                    style: TextStyle(
                                                      color: Color(0xFF007AFF),
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
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 4),
                                            Text('(Monthly on the last Friday)',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
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
                                const SizedBox(height: 5,),
                                SizedBox(
                                  height: 103.25,
                                  width: screenWidth - 100,
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
                                                                      Text(
                                                                        '${index + 1}',
                                                                        textAlign: TextAlign.center,
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
                                                              Text(
                                                                previousPlanNumbers[index],
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: const Color(0xFF292929),
                                                                  fontSize: 14,
                                                                  fontFamily: 'Inter',
                                                                  fontWeight: index == 0 ? FontWeight.w600 : FontWeight.w400,
                                                                ),
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
                                SizedBox(height: 10,),
                                Container(
                                  height: 74,
                                  width: 271,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFBFC),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xffDFDFE2)
                                      )
                                  ),
                                  child: Row(
                                    children: [
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                        child: RichText(
                                          text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Has set ',
                                              style: textS3,
                                            ),
                                            TextSpan(
                                              text: '£350 ',
                                              style: textS610,
                                            ),
                                            TextSpan(
                                              text: 'for you to set aside \n as your trip commitment towards\n flight',
                                              style: textS3,
                                            ),
                                          ],
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                                        child: Text('Change',
                                          style: textS410bl,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 120,
                        width: 283,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFC),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffF3F3F4)
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Center(
                                  child: Text('Top-up cycles',
                                    style: textS612HBlack,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Row(
                                children: [
                                  Text('Activities',
                                    style: textS612,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('9 monthly cycles from\n February to November',
                                    style: textS12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 16, 10, 0),
                                    child: Text('Change',
                                      style: textS410bl,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      ButtonMulti(title: 'Ok')
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
