import 'package:flutter/material.dart';

import 'navbar.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(209, 20, 20, 20),
      width: MediaQuery.of(context).size.width,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          mobileDrawerNavBar(context),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24.0,
              ),
            ),
            onTap: () {
              // 处理 Home 菜单点击事件
              Navigator.pop(context);
              // 这里可以添加处理点击事件后的逻辑
            },
          ),
          ExpansionTile(
            title: const Text(
              'Clubs',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: const Text(
                  'Clubs',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  // 处理 a 子菜单点击事件
                  Navigator.pop(context);
                  // 这里可以添加处理点击事件后的逻辑
                },
              ),
              ListTile(
                title: const Text(
                  'Clubs',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  // 处理 b 子菜单点击事件
                  Navigator.pop(context);
                  // 这里可以添加处理点击事件后的逻辑
                },
              ),
              ListTile(
                title: const Text(
                  'Clubs',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  // 处理 c 子菜单点击事件
                  Navigator.pop(context);
                  // 这里可以添加处理点击事件后的逻辑
                },
              ),
              ListTile(
                title: const Text(
                  'Clubs',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  // 处理 d 子菜单点击事件
                  Navigator.pop(context);
                  // 这里可以添加处理点击事件后的逻辑
                },
              ),
            ],
          ),
          ListTile(
            title: const Text(
              'Clubs',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24.0,
              ),
            ),
            onTap: () {
              // 处理 About 菜单点击事件
              Navigator.pop(context);
              // 这里可以添加处理点击事件后的逻辑
            },
          ),
        ],
      ),
    );
  }
}

