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
                  height: 895,
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
                              fit: BoxFit.cover, 'res/images/image2.jpg'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 800,
                          margin: const EdgeInsets.all(0.0),
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'LET CHILDREN FROM GAME PLAYERS TO GAME CREATORS IN THE METAVERSE CLUB.',
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
                      height: 500,
                      child: const Text(
                        'At the Metaverse Club, we believe in  harnessing the natural inclination of children to play and using it as a  powerful tool for learning and growth. Our mission is to guide children from  being game players to becoming game  creators, empowering them with  essential programming skills along the  way.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 800,
                      padding: const EdgeInsets.all(25),
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
