import 'dart:ui';
import 'package:flutter/material.dart';

import '../items/end_about.dart';

class LeadershipClubPage extends StatelessWidget {
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
                      Container(
                        width: 2000,
                        child: Image.asset(
                          'assets/images/image2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
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
                                  '''THE LEADERSHIP CLUB, ORIGINATING FROM TSINGHUA UNIVERSITY AND LED BY PROFESSOR LU XIANGQIAN, NURTURES INNOVATION AND LEADERSHIP.''',
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
                            '''The Leadership Club is set up by Tsinghua Professor Lu Xiangqian to encourage students to innovate and start businesses, broaden their horizons and improve their leadership. The club invites outstanding entrepreneurs, innovators, etc. to the club to talk with the students, and learns the successful experience of leaders in various industries in close communication. Strive to achieve the realm of 'talking with the king, winning the book for ten years'. Organize online salons regularly to help participants understand industry information and clear career direction.''',
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
