import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/lulab_view_model.dart';
import '../items/end_about.dart';

class ClubsPages extends StatelessWidget {
  const ClubsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Consumer<LulabViewModel>(
              builder: (_, clubViewModel, child) {
                //LulabViewModel _clubViewModel = clubViewModel;

                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Image.network(
                            clubViewModel.clubdata?.image?.url ??
                                "https://www.google.com.hk/url?sa=i&url=https%3A%2F%2Fstock.tuchong.com%2F&psig=AOvVaw2NUtbH6MO6T4hJLKFkA3oj&ust=1697889796719000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMjZisTKhIIDFQAAAAAdAAAAABAE",
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
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                                      clubViewModel.clubdata?.summarize ?? "",
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
                              double titleFontSize =
                                  screenWidth >= 600 ? 40 : 20;
                              if (screenWidth < 600) {
                                final scaleFactor = screenWidth / 600;
                                titleFontSize *= scaleFactor;
                              }
                              return Text(
                                clubViewModel.clubdata?.introduce ?? "",
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
