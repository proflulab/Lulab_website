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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.blue,
                          width: 2000,
                          height: 700,
                          child: Image.asset(
                            'res/images/image2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            'THE LEADERSHIP CLUB, ORIGINATING FROM TSINGHUA UNIVERSITY AND LED BY PROFESSOR LU XIANGQIAN, NURTURES INNOVATION AND LEADERSHIP.',
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
                        '''The Leadership Club is set up by Qinghua Professor Lu Xiangqian to encourage students to innovate and start businesses, broaden their horizons and improve their leadership. The club invites outstanding entrepreneurs, innovators, etc. to the club to talk with the students, and learns the successful experience of leaders in various industries in close communication. Strive to achieve the realm of 'talking with the king, winning the book for ten years'. Organize online salons regularly to help participants understand industry information and clear career direction.''',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      width: 800,
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        '''
Head of Lab, professor Lu
                        ''',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
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
