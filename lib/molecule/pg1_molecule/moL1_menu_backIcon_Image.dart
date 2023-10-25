import 'package:flutter/material.dart';

import '../../pages/pg1_home_screen.dart';

class MenuBack extends StatelessWidget {
  const MenuBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff292929)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen())
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 16, top: 13),
                child: Icon(size: 28, Icons.arrow_back_ios),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.menu),
            )
          ],
        ),
        SizedBox(height: 40,),
        const Center(
          child: Image(
              width: 100,
              height: 100,
              image: AssetImage('assets/Jin.jpg')),
        ),
      ],
    );
  }
}
