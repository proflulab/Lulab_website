import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/lulab_view_model.dart';
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
        child: Consumer<LulabViewModel>(builder: (context, v, _) {
          return ListView(
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
                  Provider.of<LulabViewModel>(context, listen: false).toPage(0);
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
                  for (var i = 0; i < v.clubname.length; i++)
                    ListTile(
                      title: Text(
                        v.clubname[i],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        v.chooseClub(i);
                        Provider.of<LulabViewModel>(context, listen: false)
                            .toPage(1);
                      },
                    ),
                ],
              ),
              ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  // 处理 About 菜单点击事件
                  Navigator.pop(context);
                  Provider.of<LulabViewModel>(context, listen: false).toPage(2);
                },
              ),
            ],
          );
        }));
  }
}
