import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../values/constants.dart';
import '../view_model/lulab_view_model.dart';
import 'dropdown.dart';

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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [const Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget deskTopNavBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
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
    margin: const EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {
        Provider.of<LulabViewModel>(context, listen: false).animateToPage(page);
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}
