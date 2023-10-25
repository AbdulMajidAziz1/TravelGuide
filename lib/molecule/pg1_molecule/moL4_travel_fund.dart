import 'package:flutter/material.dart';

import '../../atoms/Constant/constant.dart';
import '../../atoms/circular_img.dart';

class TravelFund extends StatelessWidget {
  const TravelFund({super.key});

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
      child: const Column(
        children: [
          Row(
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
          SizedBox(
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
          Row(
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
                Column(
                  children: [
                    Icon(Icons.access_alarm,
                      color: Color(0xff757575),
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                  width: 242,
                  child: Text(
                    'Split in 11 top-up cycles on the last Friday\n of every month.',
                    style: textS1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text('Change',
                    style: textS2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
