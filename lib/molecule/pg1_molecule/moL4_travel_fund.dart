import 'package:flutter/material.dart';

import '../../atoms/Constant/constant.dart';
import '../../atoms/circular_img.dart';

class TravelFund extends StatefulWidget {
  const TravelFund({super.key});

  @override
  State<TravelFund> createState() => _TravelFundState();
}

class _TravelFundState extends State<TravelFund> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 189,
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
                child: Text('Travel buddies trip commitment',
                  style: textS612,
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          const SizedBox(
            width: 312,
            height: 47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.money_sharp,
                  color: Color(0xff757575),
                  size: 20,
                ),
                SizedBox(
                  height: 47,
                  width: 37,
                  child: Column(
                    children: [
                      CircularImg(
                        pathP: 'assets/flight.png',
                        color1: Colors.pinkAccent,
                        height1: 32,
                        width1: 32,
                      ),
                      Text('Fly easy',
                        style: textS9043,
                      )
                    ],
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
          SizedBox(height: 10,),
          Divider(
            thickness: 1,
            color: Color(0xffF3F3F4),
          ),
          SizedBox(height: 10,),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Your automated trip funding plan of \$6,250',
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
                    Icon(Icons.access_alarm,
                      color: Color(0xff757575),
                      size: 20,
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

                PopupMenuButton(
                    constraints: BoxConstraints.tightFor(
                      height: 635,
                      width: 375,
                    ),
                    color: const Color(0xffFFFFFF),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: const Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text('Change',
                            style: textS2,
                         ),
                      ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 1,
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return Container(

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 635,
                                      width: 375,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 12,
                                                  decoration: const ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(16),
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
                                                        padding: const EdgeInsets.only(top: 8),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 38,
                                                              height: 4,
                                                              decoration: ShapeDecoration(
                                                                color: const Color(0xFFE2E2E2),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(100),
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
                                                      Text(
                                                        'Funding plan updated',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF292929),
                                                          fontSize: 16,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                      SizedBox(height: 12),
                                                      Text(
                                                        'Funding plan with estimated budget for the entire trip',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Color(0xFF757575),
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                const SizedBox(
                                                  width: 381,
                                                  child: Text.rich(
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
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 32,
                                                ),
                                                SizedBox(
                                                  height: 103.25,
                                                  width: 281,
                                                  child: ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: 10,
                                                      itemBuilder: (context, index) {
                                                        return Row(
                                                          children: [
                                                            SizedBox(
                                                              width: 75,
                                                              height: 103.25,
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.start,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.center,
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
                                                                        borderRadius:
                                                                        BorderRadius.circular(
                                                                            479.36),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment.center,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment.center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width: 41.80,
                                                                          height: 41.80,
                                                                          child: Stack(
                                                                            children: [
                                                                              Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Container(
                                                                                  width: 41.80,
                                                                                  height: 41.80,
                                                                                  decoration:
                                                                                  ShapeDecoration(
                                                                                    color: index == 0
                                                                                        ? const Color(
                                                                                        0xFF32CB5E)
                                                                                        : Colors
                                                                                        .black,
                                                                                    shape:
                                                                                    const OvalBorder(),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                left: 7.84,
                                                                                top: 7.84,
                                                                                child: Container(
                                                                                  width: 26.12,
                                                                                  height: 26.12,
                                                                                  padding:
                                                                                  const EdgeInsets
                                                                                      .only(
                                                                                      top: 5.22,
                                                                                      bottom:
                                                                                      4.90),
                                                                                  clipBehavior:
                                                                                  Clip.antiAlias,
                                                                                  decoration:
                                                                                  ShapeDecoration(
                                                                                    color:
                                                                                    Colors.white,
                                                                                    shape:
                                                                                    RoundedRectangleBorder(
                                                                                      borderRadius:
                                                                                      BorderRadius
                                                                                          .circular(
                                                                                          188.10),
                                                                                    ),
                                                                                  ),
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
                                                                                      Text(
                                                                                        '${index + 1}',
                                                                                        textAlign:
                                                                                        TextAlign
                                                                                            .center,
                                                                                        style:
                                                                                        TextStyle(
                                                                                          color: index ==
                                                                                              0
                                                                                              ? const Color(
                                                                                              0xFF32CB5E)
                                                                                              : Colors
                                                                                              .black,
                                                                                          fontSize:
                                                                                          10,
                                                                                          fontFamily:
                                                                                          'Inter',
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .w600,
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
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment.center,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment.center,
                                                                      children: [
                                                                        const SizedBox(
                                                                          child: Row(
                                                                            mainAxisSize:
                                                                            MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            children: [
                                                                              Text(
                                                                                'January, 23',
                                                                                textAlign:
                                                                                TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Color(
                                                                                      0xFF757575),
                                                                                  fontSize: 10,
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight:
                                                                                  FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 4),
                                                                        SizedBox(
                                                                          child: Row(
                                                                            mainAxisSize:
                                                                            MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            children: [
                                                                              Text(
                                                                                index == 0
                                                                                    ? '\$350'
                                                                                    : '\$114',
                                                                                textAlign:
                                                                                TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: const Color(
                                                                                      0xFF292929),
                                                                                  fontSize: 14,
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight:
                                                                                  index == 0
                                                                                      ? FontWeight
                                                                                      .w600
                                                                                      : FontWeight
                                                                                      .w400,
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                  width: 4),
                                                                              Transform(
                                                                                transform:
                                                                                Matrix4.identity()
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
                                                                                        width: 12,
                                                                                        height: 12,
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
                                                const SizedBox(
                                                  height: 32,
                                                ),
                                                const SizedBox(
                                                  width: 281,
                                                  child: Text(
                                                    'New funding cycle for the entire trip ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF757575),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w600,
                                                      height: 0.12,
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
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Your estimated budget funding plan of',
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
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                          children: [
                                                            Text.rich(
                                                              TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '£8,000',
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
                                                              textAlign: TextAlign.center,
                                                            ),
                                                            SizedBox(height: 4),
                                                            Text(
                                                              '(Monthly on the last Friday)',
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
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                SizedBox(
                                                  height: 103.25,
                                                  width: 281,
                                                  child: ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: 10,
                                                      itemBuilder: (context, index) {
                                                        return Row(
                                                          children: [
                                                            SizedBox(
                                                              width: 75,
                                                              height: 103.25,
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.start,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment.center,
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
                                                                        borderRadius:
                                                                        BorderRadius.circular(
                                                                            479.36),
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment.center,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment.center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width: 41.80,
                                                                          height: 41.80,
                                                                          child: Stack(
                                                                            children: [
                                                                              Positioned(
                                                                                left: 0,
                                                                                top: 0,
                                                                                child: Container(
                                                                                  width: 41.80,
                                                                                  height: 41.80,
                                                                                  decoration:
                                                                                  ShapeDecoration(
                                                                                    color: index == 0
                                                                                        ? const Color(
                                                                                        0xFF32CB5E)
                                                                                        : Colors
                                                                                        .black,
                                                                                    shape:
                                                                                    const OvalBorder(),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                left: 7.84,
                                                                                top: 7.84,
                                                                                child: Container(
                                                                                  width: 26.12,
                                                                                  height: 26.12,
                                                                                  padding:
                                                                                  const EdgeInsets
                                                                                      .only(
                                                                                      top: 5.22,
                                                                                      bottom:
                                                                                      4.90),
                                                                                  clipBehavior:
                                                                                  Clip.antiAlias,
                                                                                  decoration:
                                                                                  ShapeDecoration(
                                                                                    color:
                                                                                    Colors.white,
                                                                                    shape:
                                                                                    RoundedRectangleBorder(
                                                                                      borderRadius:
                                                                                      BorderRadius
                                                                                          .circular(
                                                                                          188.10),
                                                                                    ),
                                                                                  ),
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
                                                                                      Text(
                                                                                        '${index + 1}',
                                                                                        textAlign:
                                                                                        TextAlign
                                                                                            .center,
                                                                                        style:
                                                                                        TextStyle(
                                                                                          color: index ==
                                                                                              0
                                                                                              ? const Color(
                                                                                              0xFF32CB5E)
                                                                                              : Colors
                                                                                              .black,
                                                                                          fontSize:
                                                                                          10,
                                                                                          fontFamily:
                                                                                          'Inter',
                                                                                          fontWeight:
                                                                                          FontWeight
                                                                                              .w600,
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
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment.center,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment.center,
                                                                      children: [
                                                                        const SizedBox(
                                                                          child: Row(
                                                                            mainAxisSize:
                                                                            MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            children: [
                                                                              Text(
                                                                                'January, 23',
                                                                                textAlign:
                                                                                TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Color(
                                                                                      0xFF757575),
                                                                                  fontSize: 10,
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight:
                                                                                  FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 4),
                                                                        SizedBox(
                                                                          child: Row(
                                                                            mainAxisSize:
                                                                            MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            children: [
                                                                              const Text(
                                                                                '\$350',
                                                                                textAlign:
                                                                                TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Color(
                                                                                      0xFF292929),
                                                                                  fontSize: 14,
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight:
                                                                                  FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                  width: 4),
                                                                              Transform(
                                                                                transform:
                                                                                Matrix4.identity()
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
                                                                                        width: 12,
                                                                                        height: 12,
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
                                                const SizedBox(
                                                  height: 32,
                                                ),
                                                Container(
                                                  width: 268,
                                                  height: 56,
                                                  padding: const EdgeInsets.all(10),
                                                  decoration: ShapeDecoration(
                                                    gradient: const LinearGradient(
                                                      begin: Alignment(0.99, -0.17),
                                                      end: Alignment(-0.99, 0.17),
                                                      colors: [
                                                        Color(0xFFD26783),
                                                        Color(0xFFBA57B3),
                                                        Color(0xFF8855C9)
                                                      ],
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 1, color: Color(0xFFD26783)),
                                                      borderRadius: BorderRadius.circular(32),
                                                    ),
                                                  ),
                                                  child: const Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Next',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
