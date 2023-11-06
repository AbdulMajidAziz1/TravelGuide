import 'package:flutter/material.dart';
import 'package:login/atoms/Constant/constant.dart';
import 'package:login/atoms/Lines/bottom_line.dart';
import 'package:login/molecule/pg1_molecule/menu_bar.dart';
import 'package:login/molecule/pg1_molecule/moL2_texts.dart';
import 'package:login/molecule/pg1_molecule/moL4_travel_fund.dart';
import 'package:login/pages/funding_plan.dart';
import '../atoms/buttons/button_multi_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const MenuBack(
                  isHomeScreen: true,
                ),
                SizedBox(
                  height: 24,
                ),
                const MultiText(),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FundingPlan()));
                    },
                    child: ButtonMulti(title: 'Save wish & view funding plan')),
                const SizedBox(
                  height: 20,
                ),
                // const BottomLine(),
              ],
            ),
          )),
    );
  }
}
