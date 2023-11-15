import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

import '../Constant/constant.dart';

class TextCircle extends StatelessWidget {
  const TextCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 350,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS614
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS14
                ),
                Countup(
                    begin: 0,
                    end: 140,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 140,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 140,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 140,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('£',
                    style: textS614
                ),
                Countup(
                    begin: 0,
                    end: 35,
                    duration: Duration(seconds: 1),
                    separator: ',',
                    style: textS14
                ),
              ],
            ),
            SizedBox(width: 5,),
          ],
        )
      ],
    );
  }
}
