import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';

class TravelBankSelector extends StatelessWidget {
  const TravelBankSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      width: MediaQuery.of(context).size.width - 32,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Center(
                  child: Text(
                "Savings for all travel",
                style: textS12Bold,
              )),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
            child: Row(
              children: [
                Center(
                  child: Image(
                      width: 16,
                      height: 16,
                      image: AssetImage("assets/flight_icon.png")),
                ),
                SizedBox(
                  width: 4,
                ),
                Center(
                    child: Text(
                  "2023 (5 cities)",
                  style: textS1,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
            child: Row(
              children: [
                Center(
                  child: Image(
                      width: 16,
                      height: 16,
                      image: AssetImage("assets/flight_icon.png")),
                ),
                SizedBox(
                  width: 4,
                ),
                Center(
                    child: Text(
                  "2024 (6 cities)",
                  style: textS1,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
            child: Row(
              children: [
                Center(
                  child: Image(
                      width: 16,
                      height: 16,
                      image: AssetImage("assets/flight_icon.png")),
                ),
                SizedBox(
                  width: 4,
                ),
                Center(
                  child: Text(
                    "2025 (3 cities)",
                    style: textS1,
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
