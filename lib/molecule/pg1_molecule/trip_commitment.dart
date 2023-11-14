import 'package:flutter/material.dart';

import '../../atoms/Constant/constant.dart';
import '../../atoms/Pop_ups/automated_popup.dart';
import '../../atoms/circular_img.dart';

class TripCommitment extends StatefulWidget {
  const TripCommitment({super.key});

  @override
  State<TripCommitment> createState() => _TripCommitmentState();
}

class _TripCommitmentState extends State<TripCommitment> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 344,
      height: 196,
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
                child: Text(
                  'Travel buddies trip commitment',
                  style: textS612,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          const SizedBox(
            width: 312,
            height: 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.money_sharp,
                  color: Color(0xff757575),
                  size: 20,
                ),
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
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Color(0xffF3F3F4),
          ),
          SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Your automated trip funding plan of \$1,265',
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
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Icon(
                        Icons.access_alarm,
                        color: Color(0xff757575),
                        size: 20,
                      ),
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
                GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          builder: (context) {
                            return Container(
                                width: screenWidth,
                                height: 607,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),// Set the top-right radius
                                    ),
                                    color: Colors.white
                                ),
                                child: AutomatedPopup());
                          }
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        'Change',
                        style: textS2,
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
