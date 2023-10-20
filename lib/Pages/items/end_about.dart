import 'package:flutter/material.dart';

import '../../values/constants.dart';

Widget ea() {
  return Container(
    color: Colors.black, // 设置背景颜色为黑色
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 0, 50),
              width: 30,
              height: 30,
              child: Image.asset(logo),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 50, 0, 50),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final screenWidth = constraints.maxWidth;
                  double fontSize =
                      screenWidth >= 600 ? 25 : 15; // 根据需要设置初始字体大小

                  if (screenWidth < 600) {
                    final scaleFactor = screenWidth / 600;
                    fontSize *= scaleFactor;
                  }

                  return TextButton(
                    child: Text(
                      'Lu Lab',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    onPressed: () {},
                  );
                },
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: const Text(
            "CONTACT INFO",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: const Text(
            '''

admin@lulabs.org
''',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 0, 0, 10),
          child: const Text(
            '''
East Brokaw Road 310-F
San Jose, CA 95112
USA
''',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
      ],
    ),
  );
}
