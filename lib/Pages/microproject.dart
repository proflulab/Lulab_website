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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.blue,
                          width: 2000,
                          height: 700,
                          child: Image.asset(
                              fit: BoxFit.cover, 'res/images/microproject.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: const Text(
                            '''THIS IS A CRADLE FOR A GROUP OF CHILDREN'S PROJECT COLLISIONS.''',
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
                        '''This club offers more than just programming; it provides a range of skill development opportunities. These include, but are not limited to, honing fundamental search skills, enhancing communication abilities, nurturing leadership qualities, and more. Through hands-on experiences, members progressively master the essential skills needed for project execution. This prepares children for further personal development as they aspire to excel in their future endeavors.''',
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
                        'Head of Lab, professor Lu',
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
