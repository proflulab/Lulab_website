import 'dart:ui';

import 'package:flutter/material.dart';

import '../items/end_about.dart';

class DigitalMarketingClubPage extends StatelessWidget {
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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.blue,
                          width: 2000,
                          height: 700,
                          child: Image.asset(
                              fit: BoxFit.cover, 'res/images/marketing.jpg'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            'TAKE YOU TO MASTER CUTTING-EDGE PRACTICAL DIGITAL MARKETING METHODOLOGY.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
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
                      child: const Text(
                        '''In digital marketing club, you can understand the latest Douyin, Wechat Video Account, Red Booklet and other mainstream short video and live platform play, participate in Tsinghua Professor Lu Xiangqian IP account operation, we will also invite the industry's front-line operators and digital marketing experts from time to time to share and exchange, to help you master the most needed marketing skills in this era.''',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 800,
                      // padding: const EdgeInsets.all(25),
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        '''
Head of Lab, professor Lu
                        ''',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                ea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
