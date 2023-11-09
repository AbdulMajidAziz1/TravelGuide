import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen()
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            child: SizedBox(
              height: 133,
              width: 128,
              child: Image(
                image: AssetImage('assets/jinni-loader.gif'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
