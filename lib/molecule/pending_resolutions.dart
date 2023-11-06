import 'package:flutter/material.dart';
import 'package:login/atoms/pending_resoultion_item.dart';
import '../../atoms/Constant/constant.dart';
import 'dart:math' as math;
import 'package:intl/intl.dart' as intl;

class PendingResolutions extends StatefulWidget {
  const PendingResolutions({super.key});

  @override
  State<PendingResolutions> createState() => _PendingResolutionsState();
}

class _PendingResolutionsState extends State<PendingResolutions> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Pending resolution",
        style: textS12Bold,
      ),
      SizedBox(
        height: 10,
      ),
      PendingResolutionItem(
        buddyCount: 9,
        title: "Likely to dropout",
        primarySubtitleAmount: "\$248",
        primarySubtitleText: "your share to pay",
        secondarySubtitleAmount: "\$20",
        secondarySubtitleText: "drop out reserve",
        action: "View",
      ),
      SizedBox(
        height: 10,
      ),
      PendingResolutionItem(
        buddyCount: 9,
        title: "Payment scout",
        primarySubtitleAmount: "\$1,000",
        primarySubtitleText: "total payment",
        secondarySubtitleAmount: "3",
        secondarySubtitleText: "card transactions",
        action: "Resolve",
      ),
    ]);
  }
}
