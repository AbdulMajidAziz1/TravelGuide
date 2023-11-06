import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.amount,
      required this.positive,
      required this.date});

  final title;
  final subTitle;
  final amount;
  final date;
  final positive;
  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: 65,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/activity-circle.png'),
                height: 32,
                width: 32,
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
                        Text(
                          widget.title,
                          style: textS14,
                        ),
                        Text(
                          widget.subTitle,
                          style: textS1,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        widget.positive
                            ? Text(
                                widget.amount,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    color: Color(0xff2EAE4E)),
                              )
                            : Text(
                                widget.amount,
                                style: textS14,
                              ),
                        Text(
                          widget.date,
                          style: textS1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
