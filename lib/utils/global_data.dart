import 'package:flutter/material.dart';

class GlobalData {
  static final GlobalData _instance = GlobalData._internal();

  factory GlobalData() {
    return _instance;
  }

  GlobalData._internal();

  static GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  // 在这里定义你的全局变量
  String globalString = 'Hello, World!';
  int globalInt = 42;
  // 添加其他需要的全局变量

  // 你也可以在这个类中定义一些全局方法
  void updateString(String newString) {
    globalString = newString;
  }

  void updateInt(int newInt) {
    globalInt = newInt;
  }
}
