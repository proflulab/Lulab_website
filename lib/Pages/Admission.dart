import 'package:flutter/material.dart';

import 'items/end_about.dart';

class AdmissionPage extends StatelessWidget {
  final List<Map> photoUrls = [
    {"url": "assets/images/image1.jpg"},
    {"url": "assets/images/image2.jpg"},
    {"url": "assets/images/image4.jpg"},
  ];

  AdmissionPage({super.key, required List photoUrls});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: VerticalPhotoScroll(
          photoUrls: [
            "assets/images/image1.jpg",
            "assets/images/image2.jpg",
            "assets/images/image4.jpg"
          ],
        ),
      ),
    );
  }
}

class VerticalPhotoScroll extends StatelessWidget {
  final List<String> photoUrls;

  const VerticalPhotoScroll({super.key, required this.photoUrls});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.network(
                  "assets/images/image1.jpg",
                  fit: BoxFit.cover,
                ),
                const Positioned(
                    top: 140,
                    left: 100,
                    child: Text(
                      "Welcome to Apply to Lu Lab\n",
                      style: TextStyle(fontSize: 55.5, color: Colors.white),
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 230, 0, 0),
                  child: const Text(
                    '''
         Lu Lab has launched the Metaverse Club, the Digital
         Technology Club, the Digital Marketing Club, and the
         Leadership Club. We welcome you to join us in these 
         exciting endeavors.\n
                   ''',
                    style: TextStyle(fontSize: 35.5, color: Colors.white),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                SizedBox(
                  height: 700,
                  width: double.infinity,
                  child: Image.network(
                    "assets/images/image2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                    top: 180,
                    left: 160,
                    child: Text(
                      "METAVERSE CLUB",
                      style: TextStyle(fontSize: 35.5, color: Colors.white),
                    )),
                Container(
                    height: 50,
                    width: 210,
                    margin: const EdgeInsets.fromLTRB(160, 260, 0, 0),
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: (() {}),
                        child: const Text(
                          "Application Process",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ))),
              ],
            ),
            Stack(children: [
              Image.network(
                "assets/images/image4.jpg",
                fit: BoxFit.cover,
              ),
              const Positioned(
                  top: 300,
                  right: 200,
                  child: Text(
                    "Digital Technology Club",
                    style: TextStyle(fontSize: 35.5, color: Colors.white),
                  )),
              Positioned(
                top: 380,
                right: 270,
                child: SizedBox(
                    height: 50,
                    width: 210,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: (() {}),
                        child: const Text(
                          "Application Process",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 24, 24, 24),
                          ),
                        ))),
              )
            ]),
            Stack(children: [
              Image.network(
                "assets/images/image4.jpg",
                fit: BoxFit.cover,
              ),
              const Positioned(
                  top: 300,
                  right: 200,
                  child: Text(
                    "Leadership Club",
                    style: TextStyle(fontSize: 35.5, color: Colors.white),
                  )),
              Positioned(
                top: 380,
                right: 270,
                child: SizedBox(
                    height: 50,
                    width: 210,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: (() {}),
                        child: const Text(
                          "Application Process",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 24, 24, 24),
                          ),
                        ))),
              ),
            ]),
          ],
        ),
        ea()
      ],
    );
  }
}
