import 'dart:ui';
import 'package:flutter/material.dart';

import '../items/end_about.dart';

class DigitalTechnologyClubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Image.asset("assets/images/technology.png",
                          fit: BoxFit.fill),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Container(
                            width: 800,
                            margin: const EdgeInsets.all(0.0),
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                final screenWidth = constraints.maxWidth;
                                double fontSize = screenWidth >= 600
                                    ? 40
                                    : 20; // 根据需要设置初始字体大小

                                if (screenWidth < 600) {
                                  final scaleFactor = screenWidth / 600;
                                  fontSize *= scaleFactor;
                                }

                                return Text(
                                  '''MASTERING ADVANCED DIGITAL TECHNOLOGY THROUGH PROJECT-DRIVEN LEARNING.''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSize, // 使用计算后的字体大小
                                    fontWeight: FontWeight.w500,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 800,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final screenWidth = constraints.maxWidth;
                          double titleFontSize = screenWidth >= 600 ? 40 : 20;
                          double subTitleFontSize =
                              screenWidth >= 600 ? 25 : 15;

                          if (screenWidth < 600) {
                            final scaleFactor = screenWidth / 600;
                            titleFontSize *= scaleFactor;
                            subTitleFontSize *= scaleFactor;
                          }

                          return Text(
                            '''At the Advanced Digital Technology Club, we are committed to turning knowledge into action. Our approach is to learn skills by doing projects. Students begin their learning journey by attending meetings that encourage questions and discussion. With a solid foundation, let's do projects together and turn ideas into reality! Join us for a better future!''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 800,
                      alignment: Alignment.bottomLeft,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final screenWidth = constraints.maxWidth;
                          double subTitleFontSize =
                              screenWidth >= 600 ? 25 : 15;

                          if (screenWidth < 600) {
                            final scaleFactor = screenWidth / 600;
                            subTitleFontSize *= scaleFactor;
                          }

                          return Text(
                            '''
Head of Lab, professor Lu
                            ''',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w400,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                ea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
