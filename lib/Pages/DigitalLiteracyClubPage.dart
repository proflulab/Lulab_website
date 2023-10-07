import 'dart:ui';

import 'package:flutter/material.dart';

import '../items/end_about.dart';

class DigitalLiteracyClubPage extends StatelessWidget {
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
                              fit: BoxFit.cover, 'res/images/literacy.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            '''STRIVES TO ENHANCE CHILDREN'S COMPUTER SKILLS AND DIGITAL LITERACY THROUGH GAMES AND PRACTICAL EXPERIENCE.''',
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
                        '''The "Metaverse Digital Literacy Club" strives to enhance children's computer skills and digital literacy through games and practical experience. Children will gain a deeper understanding of digital products and grasp fundamental programming concepts, seamlessly integrating computer technology into their daily lives. This sets a solid foundation for them to become adept talents in the era of artificial intelligence.''',
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
