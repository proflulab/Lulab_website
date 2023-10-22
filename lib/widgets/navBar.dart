
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../values/constants.dart';
import '../values/size_font.dart';
import '../view_model/lulab_view_model.dart';
import 'dropdown.dart';

import 'dart:html' as html;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNavBar(context),
      desktop: (BuildContext context) => deskTopNavBar(context),
    );
  }
}

Widget mobileNavBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Consumer<LulabViewModel>(builder: (context, v, _) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(context),
          GestureDetector(
              onTap: (() {
                v.drawerKey.currentState!.openDrawer();
              }),
              child: Icon(
                v.iconsdate ? Icons.menu : Icons.close,
                color: Colors.white,
              )),
        ],
      );
    }),
  );
}

Widget mobileDrawerNavBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 55,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        navLogo(context),
        GestureDetector(
          onTap: (() {
            Navigator.of(context).pop();
          }),
          child: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget deskTopNavBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(context),
        Row(
          children: [
            navButton('Home', 0, context),
            const DropDown(),
            navButton('About', 2, context),
          ],
        ),
        const SizedBox(
          width: 56,
        ),
        // SizedBox(
        //   height: 45,
        //   child: ElevatedButton(
        //       style: borderedButtonStyle,
        //       onPressed: () {},
        //       child: Text(
        //         'Log in',
        //         style: TextStyle(color: AppColors.primary),
        //       )),
        // ),
      ],
    ),
  );
}

Widget navButton(String text, int page, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 24),
    child: TextButton(
      onPressed: () {
        Provider.of<LulabViewModel>(context, listen: false).toPage(page);
      },
      child: Text(
        text,
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: Font.navbar,
        ),
      ),
    ),
  );
}

Widget navLogo(BuildContext context) {
  return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Container(
          width: 110,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.logoLulab), fit: BoxFit.contain))));
}
