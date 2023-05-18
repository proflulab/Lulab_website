import 'package:flutter/material.dart';


Widget ea() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
         
          Row(children: [
            Row(
              children: [
                Image.network(
                  "res/images/lulab_logo.jpeg",
                  fit: BoxFit.cover,
                ),
                const Text(
              'Lu Labs',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
              ],
            ),
            Row(children: [
              //const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
              const Text(
                  "                                                                    "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " APP",
                      style: TextStyle(
                        fontSize: 40.5,
                        fontFamily: 'han',
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "\nAPP docs",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        "APP code",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                       
                      },
                    )
                  ]),
              const Text("        "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " \nFriendship link",
                      style: TextStyle(
                        fontSize: 40.5,
                        fontFamily: 'han',
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "\nMicrosoft Corporation",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Apple Inc",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Our Linkdin",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                       
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Github",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                       
                      },
                    )
                  ]),
               const Text(
                  "         "),
             
                  
            ])
          ]),
            
        ]
      ));
}
