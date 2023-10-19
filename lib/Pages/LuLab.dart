import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../service/clubs_service.dart';
import '../view_model/lulab_view_model.dart';
import '../widgets/drawer.dart';
import '../widgets/navBar.dart';
import 'clubs/clubs.dart';
import 'home/home.dart';
import 'About.dart';
import 'Admission.dart';

class LulabPage extends StatefulWidget {
  const LulabPage({Key? key}) : super(key: key);

  @override
  State<LulabPage> createState() => _LulabPageState();
}

class _LulabPageState extends State<LulabPage> {
  final List<Widget> _pageList = [
    const LuLabPage(),
    const ClubsPages(),
    const AboutPage(),
  ];

  @override
  void initState() {
    // 获取接口数据
    ClubsService.getClubs(Provider.of<LulabViewModel>(context, listen: false));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade200.withOpacity(0.3),
                ),
                child: const NavBar(),
              ),
            ),
          ),
        ),
      ),
      // drawer: const MobileMenu(),
      body: Consumer<LulabViewModel>(
          builder: (context, pageControllerProvider, _) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageControllerProvider.pageController,
          children: _pageList,
        );
      }),
    );
  }
}
