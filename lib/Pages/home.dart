import 'package:flutter/material.dart';
import 'LuLab.dart';
import 'About.dart';
import 'Admission.dart';
import 'MetaverseClub.dart';
import 'microproject.dart';
import 'DigitalTechnologyClub.dart';
import 'LeadershipClub.dart';
import 'AIClubPage.dart';
import 'DigitalMarketingClubPage.dart';
import 'DigitalLiteracyClubPage.dart';

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
    DigitalLiteracyClubPage(),
    RobloxChatGPTClubPage(),
    DigitalTechnologyClubPage(),
    AIClubPage(),
    DigitalMarketingClubPage(),
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
        appBar: _buildAppBar(context),
        body: Column(
          children: [
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
                    ] +
                    _clubPages,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      // 当屏幕宽度小于600时，显示合并后的菜单按钮
      return AppBar(
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
  itemBuilder: (context) =>  [
    _buildCustomPopupMenuItem('Home', 0, context),
    _buildCustomPopupMenuItem('About', 1, context),
    PopupMenuItem<int>(
      value: 2, // 这里使用一个虚拟的值
      child: ExpansionTile(
        title: Text(
          'Clubs',
          style: TextStyle(
            fontFamily: 'MyFontStyle',
            fontSize: 20,
            color: _selectedButtonIndex >= 3 ? Colors.green : Colors.white,
            fontWeight: _selectedButtonIndex >= 3
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        children: [
          _buildCustomPopupMenuItem('Metaverse Club', 3, context),
          _buildCustomPopupMenuItem('Metaverse Digital Literacy Club', 4, context),
          _buildCustomPopupMenuItem('Digital Microprojects Club', 5, context),
          _buildCustomPopupMenuItem('Advanced Digital Tech Club', 6, context),
          _buildCustomPopupMenuItem('AI Club', 7, context),
          _buildCustomPopupMenuItem('Digital Marketing Club', 8, context),
          _buildCustomPopupMenuItem('Leadership Club', 9, context),
        ],
      ),
    ),
  ],
  onSelected: (index) {
    setState(() {
      _selectedButtonIndex = index;
    });
    if (index >= 3) {
      _pageController.jumpToPage(index);
    }
  },
  color: Colors.black,
),

        ],
      );
    } else {
      // 当屏幕宽度大于等于600时，显示分开的导航按钮
      return AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('res/images/lulab_logo.jpeg',
            width: 100, // 设置宽度
            height: 100),
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
          _buildTextButton(1, 'About'),
          const SizedBox(width: 10),
          _buildClubsButton(context),
        ],
      );
    }
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
            fontFamily: 'MyFontStyle',
            fontSize: 24,
            color: _selectedButtonIndex == index
                ? Colors.green // 选中时的颜色
                : _hoveredButtonIndex == index
                    ? Colors.green // 悬停时的颜色
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
            fontFamily: 'MyFontStyle',
            fontSize: 24,
            color: _selectedButtonIndex >= 3 ? Colors.green : Colors.white,
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
        _buildCustomPopupMenuItem(
            'Metaverse Digital Literacy Club', 1, context),
        _buildCustomPopupMenuItem('Digital Microprojects Club', 2, context),
        _buildCustomPopupMenuItem('Advanced Digital Tech Club', 3, context),
        _buildCustomPopupMenuItem('AI Club', 4, context),
        _buildCustomPopupMenuItem('Digital Marketing Club', 5, context),
        _buildCustomPopupMenuItem('Leadership Club', 6, context),
      ],
      elevation: 0, // 去除阴影
      color: Colors.black, // 设置背景色为透明
    );

    if (selectedValue != null) {
      setState(() {
        _selectedButtonIndex = selectedValue;
      });
      _pageController.jumpToPage(_selectedButtonIndex);
    }
  }

  PopupMenuItem _buildCustomPopupMenuItem(
      String clubName, int index, BuildContext context) {
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
              fontFamily: 'MyFontStyle',
              fontSize: 20,
              color: isSelected ? Colors.green : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
