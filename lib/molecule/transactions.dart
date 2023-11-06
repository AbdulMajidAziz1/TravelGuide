import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/atoms/transaction_item.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  var showTransactionDetails = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Transactions",
            style: textS12Bold,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: screenWidth,
            height: 86,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My transactions",
                          style: textS614,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Trip reservations: \$1,200",
                          style: textS1,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Unallocated funds: \$250",
                          style: textS1,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$1,450",
                          style: textS614,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Available: \$1,250",
                          style: textS1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          showTransactionDetails
              ? Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TransactionItem(
                      title: "Camel ride company limited",
                      subTitle: "Activity reservation for camel...",
                      amount: "-\$1,200",
                      date: "May 20, 2023",
                      positive: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionItem(
                      title: "Camel ride company limited",
                      subTitle: "Activity reservation for camel...",
                      amount: "-\$1,200",
                      date: "May 20, 2023",
                      positive: false,
                    ),
                  ],
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: screenWidth,
            height: 24,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  showTransactionDetails = !showTransactionDetails;
                });
              },
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Pending (5) \$200",
                    style: textS3,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Image(
                    image: AssetImage('assets/arrow-down.png'),
                    height: 16,
                    width: 16,
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "May",
            style: textS614,
          ),
          SizedBox(
            height: 10,
          ),
          TransactionItem(
            title: "Camel ride company limited",
            subTitle: "Activity reservation for camel...",
            amount: "-\$1,200",
            date: "May 20, 2023",
            positive: false,
          ),
          SizedBox(
            height: 10,
          ),
          TransactionItem(
            title: "Trip in 2025: NYC",
            subTitle: "Activity reservation for camel...",
            amount: "\$1,200",
            date: "May 20, 2023",
            positive: true,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: screenWidth,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "View more transactions",
                  style: textS3,
                ),
                SizedBox(
                  width: 6,
                ),
                Image(
                  image: AssetImage('assets/arrow-right.png'),
                  height: 16,
                  width: 16,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
