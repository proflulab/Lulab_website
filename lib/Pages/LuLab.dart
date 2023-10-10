import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lulab_website/Pages/clubs.dart';
import '../controller/lulab.dart';
import '../model/clubs.dart';
import 'home.dart';
import 'About.dart';
import 'dart:convert';

import 'package:get/get.dart';

class LulabPage extends StatefulWidget {
  const LulabPage({Key? key}) : super(key: key);

  @override
  State<LulabPage> createState() => _LulabPageState();
}

class _LulabPageState extends State<LulabPage> {
  //LulabController lulabController = Get.put(LulabController());

  int _selectedButtonIndex = 0;

  late PageController _pageController;
  late List<ClubData> clubdata;
  late ClubData club;

  String value = "1";
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedButtonIndex);
    loadJsonData();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> loadJsonData() async {
    final jsonFile =
        await rootBundle.loadString('res/json/club.json'); // 替换成你的JSON文件路径
    final jsonData = json.decode(jsonFile);

    clubdata = ClubsData.fromJson(jsonData).data!;
    club = clubdata[0];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
              future: loadJsonData(), // 异步获取数据的函数
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('发生错误: ${snapshot.error}');
                } else {
                  // 显示实际数据
                  return IndexedStack(
                      index: _selectedButtonIndex,
                      children: const [
                        HomePage(),
                        ClubsPage(),
                        AboutPage(),
                        // AdmissionPage(
                        //   photoUrls: const [
                        //     "res/images/image1.jpg",
                        //     "res/images/image2.jpg",
                        //     "res/images/image3.jpg",
                        //   ],
                        // ),
                      ]);
                }
              },
            )),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // 当屏幕宽度小于600时，显示合并后的菜单按钮
      return AppBar(
        leading: Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 5, 10),
          child: Image.asset("res/images/lulab_logo.jpeg"),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Lu Lab',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: 'MyFontStyle',
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                child: ExpansionTile(
                  iconColor: Colors.green,
                  title: Text(
                    'Clubs',
                    style: TextStyle(
                      fontFamily: 'MyFontStyle',
                      fontSize: 20,
                      color: _selectedButtonIndex >= 3
                          ? Colors.green
                          : Colors.white,
                      fontWeight: _selectedButtonIndex >= 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  children: [],
                ),
              ),
            ],
            onSelected: (index) {
              setState(() {
                _selectedButtonIndex = index;
              });
              // if (index >= 3) {
              //   _pageController.jumpToPage(index);
              // }
            },
            color: Colors.black,
          ),
        ],
      );
    } else {
      // 当屏幕宽度大于等于600时，显示分开的导航按钮
      return AppBar(
        backgroundColor: Color.fromARGB(129, 0, 0, 0),
        leading: Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 5, 10),
          child: Image.asset("res/images/lulab_logo.jpeg"),
        ),
        title: const Text(
          'Lu Lab',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: 'MyFontStyle',
          ),
        ),
        actions: [
          _buildTextButton(0, ' Home'),
          const SizedBox(width: 10),
          MouseRegion(
            onEnter: (event) {
              // setState(() {
              //   isHovered = true;
              // });
            },
            onExit: (event) {
              // setState(() {
              //   isHovered = false;
              // });
            },
            child: PopupMenuButton<int>(
              icon: null,
              child: const Text(
                "Clubs",
                style: TextStyle(
                  fontFamily: 'MyFontStyle',
                  fontSize: 18,
                ),
              ),
              itemBuilder: (BuildContext context) {
                return List<PopupMenuItem<int>>.generate(clubdata.length,
                    (int index) {
                  final value = index + 1;
                  return PopupMenuItem<int>(
                    value: value,
                    child: Text(clubdata[index].clubname!),
                  );
                });
              },
              onSelected: (int value) {
                //lulabController.increment(clubdata[value].clubname);

                // setState(() {
                //   // _selectedButtonIndex = 1;
                //   // _pageController.jumpToPage(1);
                // });
                // _pageController.animateToPage(
                //   1,
                //   duration: const Duration(milliseconds: 300),
                //   curve: Curves.easeInOut,
                // );
              },
            ),
          ),
          const SizedBox(width: 10),
          _buildTextButton(2, 'About'),
        ],
      );
    }
  }

  Widget _buildTextButton(int index, String label) {
    return MouseRegion(
      // onEnter: (_) {
      //   setState(() {
      //     _hoveredButtonIndex = index;
      //   });
      // },
      onExit: (_) {
        // setState(() {
        //   _hoveredButtonIndex = -1;
        // });
      },
      child: TextButton(
        onPressed: () {
          setState(() {
            _selectedButtonIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'MyFontStyle',
            fontSize: 24,
            color: _selectedButtonIndex == index
                ? Colors.green // 选中时的颜色
                : Colors.white, // 默认颜色
          ),
        ),
      ),
    );
  }
}
