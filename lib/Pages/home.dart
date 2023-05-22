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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedButtonIndex = 0;
  int _hoveredButtonIndex = -1;
  late PageController _pageController;
  bool _isClubsExpanded = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedButtonIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.black,
            leading: Row(
              children: [
                Image.network(
                  "res/images/lulab_logo.jpeg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
            title: _buildTitleButton(),
            actions: [
              _buildTextButton(0, 'Lu Lab'),
              const SizedBox(width: 10),
              _buildTextButton(2, 'About'),
              const SizedBox(width: 10),
              _buildClubsButton(context),
              const SizedBox(width: 10),
              _buildTextButton(3, 'Admission'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedButtonIndex = index;
                });
              },
              children: [
                LuLabPage(),
                AboutPage(),
                AboutPage(),
                AdmissionPage(photoUrls: const [
                  "res/images/image1.jpg",
                  "res/images/image2.jpg",
                  "res/images/image3.jpg",
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleButton() {
    return InkWell(
      onTap: () {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: const Text(
        '   Lu Lab',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
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
              ? Colors.red // Selected color
              : _hoveredButtonIndex == index
                  ? Colors.red // Hovered color
                  : Colors.white, // Default color
        ),
      ),
    ),
  );
}


Widget _buildClubsButton(BuildContext context) {
  return MouseRegion(
    onEnter: (_) {
      setState(() {
        _hoveredButtonIndex = 1;
      });
    },
    onExit: (_) {
      setState(() {
        _hoveredButtonIndex = -1;
      });
    },
    child: TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Stack(
              children: [
                Positioned(
                  top: 30,
                  right:0,
                  child: AlertDialog(
                    backgroundColor: Colors.black,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildClubOption('Metaverse Club', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MetaverseClubPage()),
                          );
                        }),
                         _buildClubOption('Roblox&ChatGPT Club', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RobloxChatGPTClubPage()),
                          );
                        }),
                        _buildClubOption('Digital Technology Club', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DigitalTechnologyClubPage()),
                          );
                        }),
                         _buildClubOption('Leadership Club', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LeadershipClubPage()),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                
              ],
            );
          },
        );
      },
      child: Text(
        'Clubs',
        style: TextStyle(
          fontSize: 15,
          color: _selectedButtonIndex == 1
              ? Colors.red // Selected color
              : _hoveredButtonIndex == 1
                  ? Colors.red // Hovered color
                  : Colors.white, // Default color
        ),
      ),
    ),
  );
}



Widget _buildClubOption(String label, VoidCallback onPressed) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered) ||
              states.contains(MaterialState.pressed)) {
            return Colors.red; // Color when hovered or pressed
          }
          return Colors.white; // Default color
        },
      ),
    ),
        child: Text(
      label,
      style: TextStyle(
        fontSize: 16, // 修改字体大小
      ),
    ),

  );
}


}