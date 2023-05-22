import 'package:flutter/material.dart';


class AdmissionPage extends StatelessWidget {
  final List<Map> photoUrls = [
    {"url": "res/images/image1.jpg"},
    {"url": "res/images/image2.jpg"},
    {"url": "res/images/image4.jpg"},
  ];

  AdmissionPage({super.key, required List photoUrls});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const VerticalPhotoScroll(photoUrls: ["res/images/image1.jpg","res/images/image2.jpg","res/images/image4.jpg"],),
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
                Container(
                  child: Stack(
                    children: [
                       Image.network(    
                  "res/images/image1.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 140,
                    left: 100,
                    child: Text(
                      "Welcome to Apply to Lu Lab\n",
                      style: TextStyle(fontSize: 55.5, color: Colors.white),
                    )),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 230, 0, 0),
                child:  const Text(
                    '''
         Lu Lab has launched the Metaverse Club, the Digital
         Technology Club, the Digital Marketing Club, and the
         Leadership Club. We welcome you to join us in these 
         exciting endeavors.\n
                     ''',
                    style: TextStyle(fontSize: 35.5, color: Colors.white),
                  ),
              )  ,
                    ],
                  )
                ),
           Stack(
            children: [
               Container(
              height: 700,
              width: double.infinity,
              child: Image.network("res/images/image2.jpg",
              fit: BoxFit.cover,
              ),
              ),
              Positioned(
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
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: (() {
                  
                }), child: const Text("Application Process",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                ))
              ),
            ],
           ),
            
            
          Container(
              child: Stack(
                children: [
                  Image.network("res/images/image4.jpg",
              fit: BoxFit.cover,
              ),
              Positioned(
                    top: 300,
                    right: 200,
                    child: Text(
                      "Digital Technology Club",
                      style: TextStyle(fontSize: 35.5, color: Colors.white),
                    )),
              Container(
                height: 50,
                width: 210,
                margin: const EdgeInsets.fromLTRB(615, 370, 0, 0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: (() {
                  
                }), child: const Text("Application Process",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 26, 26, 26),
                ),
                ))
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child:
                 Container(
                  
                  width:  50,
                  height: 50,
                  child:  Image.network(
                  "res/images/lulab_logo.jpeg"
                ),
                ),
                  )
                ],
              ),
            ),
              
              ],
            ),
              ],
            );
  }
}

