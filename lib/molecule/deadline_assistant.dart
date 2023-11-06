import 'package:flutter/material.dart';

class DeadLineAssistant extends StatelessWidget {
  const DeadLineAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final index = 0;
    return SizedBox(
      width: fullWidth,
      height: 600,
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
                  width: fullWidth - 30,
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

                                            //  CircularProgressIndicator(
                                            //   strokeWidth: 8,
                                            //   color: index == 0
                                            //       ? const Color(0xFF32CB5E)
                                            //       : Colors.black,
                                            //   value: (index + 1) * 0.091,
                                            //   semanticsLabel:
                                            //       'Circular progress indicator',
                                            // ),
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
                                              Text(
                                                '${index + 1}',
                                                textAlign: TextAlign.center,
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
                                "January, 23",
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$35",
                                    style: TextStyle(
                                      color: Color(0xFF292929),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          width: 185,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$35",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$35",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$35",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$35",
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      )

                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       "\$35",
                      //       style: TextStyle(
                      //         color: Color(0xFF757575),
                      //         fontSize: 14,
                      //         fontFamily: 'Inter',
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       "\$35",
                      //       style: TextStyle(
                      //         color: Color(0xFF757575),
                      //         fontSize: 14,
                      //         fontFamily: 'Inter',
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       "\$35",
                      //       style: TextStyle(
                      //         color: Color(0xFF757575),
                      //         fontSize: 14,
                      //         fontFamily: 'Inter',
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   width: 12,
                      // ),
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
