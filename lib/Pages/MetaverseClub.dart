import 'dart:ui';

import 'package:flutter/material.dart';

import '../items/end_about.dart';

class MetaverseClubPage extends StatelessWidget {
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
                              fit: BoxFit.cover,
                              'res/images/metaverseclub.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            'DEDICATED TO CREATING A VIRTUAL LANGUAGE ENVIRONMENT FOR CHILDREN TO ENHANCE THEIR FOREIGN LANGUAGE LISTENING AND SPEAKING SKILLS.',
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
                        '''The "Metaverse Club" is dedicated to creating a virtual language environment for children to enhance their foreign language listening and speaking skills. In this unique atmosphere, children can effortlessly improve their language abilities while enjoying their favorite activities and hobbies.''',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
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
