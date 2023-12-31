import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../values/constants.dart';
import 'items/end_about.dart';

List<Map<String, String>> imageList = [
  {"url": Assets.homeLobby},
  {"url": Assets.image3},
  {"url": Assets.image1},
];

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: picture(),
        ),
      ),
    );
  }

  Widget picture() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 10.5 / 5.5,
            child: Swiper(
              pagination: SwiperPagination(
                builder: SwiperCustomPagination(
                  builder: (BuildContext context, SwiperPluginConfig config) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(config.itemCount, (index) {
                        bool active = index == config.activeIndex;
                        return Container(
                          width: 30,
                          height: 4,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: active ? Colors.green : Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    );
                  },
                ),
                // margin: const EdgeInsets.only(bottom: 20),
              ),
              itemBuilder: (BuildContext context, int index) {
                final bool showText = index == 0;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imageList[index]["url"]!,
                      fit: BoxFit.cover,
                    ),
                    if (showText)
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                '''

Stepping out of the ivory tower of
Tsinghua University, allowing
everyone the opportunity to receive
high-quality education, and
nurturing talents for an innovative era.
''',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                  ],
                );
              },
              itemCount: imageList.length,
              loop: true,
              scrollDirection: Axis.horizontal,
              control: const SwiperControl(color: Colors.green),
              autoplay: true,
              autoplayDelay: 6000,
              duration: 300,
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 1000) {
              // 当屏幕宽度小于等于600像素时
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                      ),
                    ),
                    child: Image.asset(
                      Assets.luXiangqian,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome From the Head of Lab\n',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Thank you for your interest in Lu Lab!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '''
So much has been accomplished since Lu Lab was founded   
in 1994. Our lab has grown in such tremendous ways, but 
I am so proud that our mission and our unique character 
have remained firmly in place.\n
I invite you to explore our website, discover more about
our worldwide learning community, and see what makes
the Lu Lab experience so extraordinary.\n
-Lewis X. Lu, Ph.D.
''',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              // 当屏幕宽度大于600像素时，保持原有布局
              return Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome From the Head of Lab\n',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Thank you for your interest in Lu Lab!',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '''
So much has been accomplished since Lu Lab was founded   
in 1994. Our lab has grown in such tremendous ways, but 
I am so proud that our mission and our unique character 
have remained firmly in place.\n
I invite you to explore our website, discover more about
our worldwide learning community, and see what makes
the Lu Lab experience so extraordinary.\n
-Lewis X. Lu, Ph.D.
''',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(50, 100, 150, 100),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 4.0,
                          ),
                        ),
                        width: 450,
                        height: 500,
                        child: Image.asset(
                          Assets.luXiangqian,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
        ea()
      ],
    );
  }
}
