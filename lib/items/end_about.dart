import 'dart:html';
import 'package:flutter/material.dart';

Widget ea() {
  return Container(
    color: Colors.black, // 设置背景颜色为黑色
    child: SingleChildScrollView(
      child: Row(
        children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 50, 0, 60),
                    width: 30,
                    height: 30,
                    child: Image.network("res/images/lulab_logo.jpeg"),
                      ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: TextButton(
                      child: const Text(
                        '   Lu Labs\n\n',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: const Text(
                  "CONTACT INFO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: const Text(
                  "\nAdmission@proflu.cn",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 0, 50),
                child: const Text(
                  "\nSan Francisco, CA 94539",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ],
          ),
          const Text("        "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(200, 50, 0, 20),
                child: TextButton(
                  child: const Text(
                    'About',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                child: TextButton(
                  child: const Text(
                    'Admission',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
