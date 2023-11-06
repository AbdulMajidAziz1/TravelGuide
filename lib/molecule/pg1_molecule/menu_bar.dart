import 'package:flutter/material.dart';
import '../../atoms/Constant/constant.dart';

import '../../pages/home_screen.dart';

class MenuBack extends StatelessWidget {
  const MenuBack(
      {super.key,
      required this.isHomeScreen,
      this.showJinni = true,
      this.title});

  final isHomeScreen;
  final showJinni;
  final title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            !isHomeScreen
                ? TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: const Color(0xff292929)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, top: 13),
                      child: Icon(size: 28, Icons.arrow_back_ios),
                    ),
                  )
                : Center(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, top: 57),
                    ),
                  ),
            title != null
                ? Text(
                    title,
                    style: textS616B,
                  )
                : Center(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.menu),
            )
          ],
        ),
        showJinni
            ? Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage(jiniLoaderImg)),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
