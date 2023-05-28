
import 'package:flutter/material.dart';


class DigitalTechnologyClubPage extends StatefulWidget {
  const DigitalTechnologyClubPage({super.key});

  @override
  State<DigitalTechnologyClubPage> createState() => _DigitalTechnologyClubPageState();
}

class _DigitalTechnologyClubPageState extends State<DigitalTechnologyClubPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:  Column(
     mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
          width: double.infinity,
          height: 1800,
          child: Column(
            children: [
              Stack(
            children: [
              Container(
                height: 700,
                width: double.infinity,
                child: Image.network(
                "res/images/Technology.png",
                fit: BoxFit.cover,
              ),
              ),
               Container(
                margin: EdgeInsets.fromLTRB(80, 150, 0, 0),
                child: const Text(
                  "Our Mission\n",
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white, 
                  ),
                ),
               ),
               Container(
                margin: EdgeInsets.fromLTRB(80, 230, 0, 0),
                child: const Text(
                  '''Our mission at the Technology Club is to empower
students with the skills and knowledge needed to
excel in the rapidly evolving world of technology.
We provide hands-on experiences and cutting-
edge projects, fostering innovation, creativity, and a
mindset for success\n
                  ''',
                  style: TextStyle(
                    fontSize: 35.5,
                    color: Colors.white,
                  ),
                ),
               ),
                Row(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
            margin: EdgeInsets.fromLTRB(80, 540, 0, 0),
                height: 580,
                width: MediaQuery.of(context).size.width /2.8,
                decoration: BoxDecoration( 
          	 border:  Border.all(color: Color.fromARGB(235, 236, 236, 236), width: 1),// border
          ),
                child: Image.network("res/images/Technology.png",
                fit: BoxFit.cover),
              ),
                Container(

                margin: EdgeInsets.fromLTRB(0, 540, 0, 0),
                height: 580,
                width: MediaQuery.of(context).size.width / 1.8863,
                 decoration: BoxDecoration( 
                  color: Colors.black,
          	 border:  Border.all(color: Color.fromARGB(235, 240, 237, 237), width: 1),// border
          ),
                child: const Center(
                  child: Text('''"At the Technology Club, we are constantly
  engaged in cutting-edge projects with our
  students. Our latest endeavor involves
  developing an artificial intelligence app, utilizing
  Flutter for the frontend, MongoDB for the
  backend, and incorporating a speech recognition
  module for an enhanced user experience."\n
  "We chose to focus on the development of an
  artificial intelligence app because innovation
  emerges in waves. After 1994, the opportunity for
  innovation was primarily in building websites for 
  companies like Alibaba, Baidu, and Google. With 
  the advent of smartphones, the opportunity 
  shifted to developing apps like WeChat, Meituan, 
  and Kuaishou. Recently, the prospects for AI-
  powered apps have become increasingly
  promising."\n
                              ''',
                    style: TextStyle(
                    fontSize: 16.5,
                    color: Colors.white,
                  ),
                  ),
                ),
              )
                ],
               ),

               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                margin: const EdgeInsets.fromLTRB(80, 1120, 0, 0),
                height: 600,
                width: MediaQuery.of(context).size.width / 1.847,
                 decoration: BoxDecoration( 
                  color: Colors.black,
          	 border:  Border.all(color: const Color.fromARGB(235, 240, 237, 237), width: 1),// border
          ),
                child: const Center(
                  child: Text('''Technology Club has successfully nurtured 
  numerous elite talents, and our alumni have gone 
  on to work at renowned Silicon Valley companies 
  such as Tesla, Google, and other industry leaders\n
  We guide our students through a comprehensive 
  learning experience that encompasses various 
  aspects of an internet company, including 
  product development, internet marketing, and 
  programming. By providing this holistic 
  approach, our students acquire versatile skills 
  that can be applied not only within our club but 
  also in other companies, enabling them to 
  unleash their full potential\n
                              ''',
                    style: TextStyle(
                    fontSize: 16.5,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
               Container(
            margin: const EdgeInsets.fromLTRB(0, 1120, 0, 0),
                height: 600,
                width: MediaQuery.of(context).size.width /2.9,
                decoration: BoxDecoration( 
          	 border:  Border.all(color: const Color.fromARGB(235, 240, 237, 237), width: 1),// border
          ),
                child: Image.network("res/images/Technology.png",
                fit: BoxFit.cover),
              ),
                ],
               ),
            ]
              )
            ],
          ),
        ),
        Stack(
          children: [
            Container(
          height: 305,
          width: double.infinity,
          color: Colors.black,
        ),
         Container(
            margin: EdgeInsets.fromLTRB(95, 20, 0, 0),
            width:  30,
            height: 30,
            child:  Image.network(
              "res/images/lulab_logo.jpeg"
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(180, 20, 0, 0),
              child: const Text("Lu Labs",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(100, 110, 0, 0),
              child: const Text('''
  CONTACT INFO\n
  admission@proflu.cn\n
  San Francisco, CA 9453
                                ''',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(450, 115, 0, 0),
               child: const Text("About",
               style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(450, 180, 0, 0),
               child: const Text("Admission",
               style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              ),
            ),
          ],
        )
    ],
  )
  )
  );
}
}
