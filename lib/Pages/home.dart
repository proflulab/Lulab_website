import 'package:flutter/material.dart';
import 'LuLab.dart';
import 'About.dart';
import 'Admission.dart';
import 'MetaverseClub.dart';
import 'Roblox&ChatGPTClub.dart';
import 'DigitalTechnologyClub.dart';
import 'LeadershipClub.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedButtonIndex = 0;
  int _hoveredButtonIndex = -1;
  late PageController _pageController;

  final List<Widget> _clubPages = [
    MetaverseClubPage(),
    RobloxChatGPTClubPage(),
    const DigitalTechnologyClubPage(),
    LeadershipClubPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedButtonIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            _buildNavigationBar(context),
            Expanded(
              child: IndexedStack(
                index: _selectedButtonIndex,
                children: [
                  const LuLabPage(),
                  const AboutPage(),
                  AdmissionPage(
                    photoUrls: const [
                      "res/images/image1.jpg",
                      "res/images/image2.jpg",
                      "res/images/image3.jpg",
                    ],
                  ),
                ] + _clubPages,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 60, // 设置导航栏的高度
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              "res/images/lulab_logo.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Lu Lab',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Expanded(child: Container()), // 添加一个Expanded容器，将按钮推到右侧
          _buildTextButton(0, 'Lu Lab'),
          const SizedBox(width: 10),
          _buildTextButton(1, 'About'),
          const SizedBox(width: 10),
          _buildClubsButton(context),
          const SizedBox(width: 10),
          _buildTextButton(2, 'Admission'),
        ],
      ),
    );
  }

  Widget _buildTextButton(int index, String label) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _hoveredButtonIndex = index;
        });
      },
      onExit: (_) {
        setState(() {
          _hoveredButtonIndex = -1;
        });
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
            fontSize: 15,
            color: _selectedButtonIndex == index
                ? Colors.red // 选中时的颜色
                : _hoveredButtonIndex == index
                    ? Colors.red // 悬停时的颜色
                    : Colors.white, // 默认颜色
          ),
        ),
      ),
    );
  }

  Widget _buildClubsButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: TextButton(
        onPressed: () {
          _showPopupMenu(context);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        child: Text(
          'Clubs',
          style: TextStyle(
            fontSize: 15,
            color: _selectedButtonIndex >= 3 ? Colors.red : Colors.white,
          ),
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) async {
    final selectedValue = await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(500, 40, 0, 0),
      items: [
        _buildCustomPopupMenuItem('Metaverse Club', 0, context),
        _buildCustomPopupMenuItem('Roblox&ChatGPT Club', 1, context),
        _buildCustomPopupMenuItem('Digital Technology Club', 2, context),
        _buildCustomPopupMenuItem('Leadership Club', 3, context),
      ],
      elevation: 0, // 去除阴影
      color: Colors.black, // 设置背景色为透明
    );

    if (selectedValue != null) {
      setState(() {
        _selectedButtonIndex = selectedValue;
      });
     _pageController.jumpToPage(
  _selectedButtonIndex,
);

    }
  }

  PopupMenuItem<int> _buildCustomPopupMenuItem(String clubName, int index, BuildContext context) {
    bool isSelected = _selectedButtonIndex == index + 3;

    return PopupMenuItem<int>(
      value: index + 3,
      child: InkWell(
        onTap: () {
          Navigator.pop(context, index + 3);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            clubName,
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}


