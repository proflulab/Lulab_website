import 'package:flutter/material.dart';
import 'Pages/home.dart';
void main() {
  // ignore: null_check_always_fails
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )));
}