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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.blue,
                          width: 2000,
                          height: 700,
                          child: Image.asset(
                              fit: BoxFit.cover, 'res/images/technology.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            'MASTERING ADVANCED DIGITAL TECHNOLOGY THROUGH PROJECT-DRIVEN LEARNING.',
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
                        '''At the Advanced Digital Technology Club, we are committed to turning knowledge into action. Our approach is to learn skills by doing projects. Students begin their learning journey by attending meetings that encourage questions and discussion. With a solid foundation, let's do projects together and turn ideas into reality! Join us for a better future!''',
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
