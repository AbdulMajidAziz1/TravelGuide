import 'package:flutter/material.dart';
import '../../atoms/Constant/constant.dart';
import 'dart:math' as math;
import 'package:intl/intl.dart' as intl;

class PendingResolutionItem extends StatefulWidget {
  const PendingResolutionItem({
    super.key,
    required this.buddyCount,
    required this.title,
    required this.action,
    required this.primarySubtitleAmount,
    required this.primarySubtitleText,
    required this.secondarySubtitleAmount,
    required this.secondarySubtitleText,
  });
  final buddyCount;
  final title;
  final action;
  final primarySubtitleAmount;
  final primarySubtitleText;
  final secondarySubtitleAmount;
  final secondarySubtitleText;

  @override
  State<PendingResolutionItem> createState() => _PendingResolutionItemState();
}

class _PendingResolutionItemState extends State<PendingResolutionItem> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: 56,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE8E7EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                  child: Center(
                      child: Text('${widget.buddyCount}', style: textS616B)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(widget.buddyCount <= 1 ? "Buddy" : "Buddies",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 6.65,
                        fontFamily: 'Inter',
                        color: Color(0xff161518)))
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Color(0xFFF3F3F4),
              height: 48,
              width: 1,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/flag.png'),
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(widget.title, style: textS614),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text("${widget.primarySubtitleAmount} ",
                              style: textS3C7),
                          Text("${widget.primarySubtitleText} ",
                              style: textS3C),
                          SizedBox(
                            width: 2,
                          ),
                          widget.action == 'View'
                              ? Image(
                                  image: AssetImage('assets/arrow-up.png'),
                                  height: 12,
                                  width: 12,
                                )
                              : Container(),
                          Text(
                            "${widget.secondarySubtitleAmount} ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              color: Color(0xffff3b30),
                            ),
                          ),
                          Text("${widget.secondarySubtitleText} ",
                              style: textS3),
                        ],
                      )
                    ],
                  ),
                  Text(
                    widget.action,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      color: Color(0xff007aff),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
