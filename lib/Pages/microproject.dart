import 'dart:ui';
import 'package:flutter/material.dart';

import '../items/end_about.dart';

class RobloxChatGPTClubPage extends StatelessWidget {
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
                      Image.asset("assets/images/microproject.png",
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
                                  '''THIS IS A CRADLE FOR A GROUP OF CHILDREN'S PROJECT COLLISIONS.''',
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
                            '''This club offers more than just programming; it provides a range of skill development opportunities. These include, but are not limited to, honing fundamental search skills, enhancing communication abilities, nurturing leadership qualities, and more. Through hands-on experiences, members progressively master the essential skills needed for project execution. This prepares children for further personal development as they aspire to excel in their future endeavors.''',
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
