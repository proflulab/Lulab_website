import 'package:flutter/material.dart';

import '../model/clubs_model.dart';

class LulabViewModel with ChangeNotifier {
  PageController pageController = PageController();

  List<Clubs> _clubsdata = [];

  late Clubs _clubdata;

  List<String> _clubName = [];

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  setClubsList(List<Clubs> clubsdata) {
    _clubsdata = [];
    _clubsdata = clubsdata;
    //print(_clubsdata.length);

    notifyListeners();
  }

  //提取俱乐部名字并转成列表
  getClubNameList(List<Clubs> clubsdata) {
    if (clubsdata.isNotEmpty) {
      _clubName = clubsdata.map((club) => club.clubname.toString()).toList();

      //print(_clubName);
    }

    notifyListeners();
  }

  chooseClub(int club) {
    _clubdata = _clubsdata[club];
  }

  // getClub(int club) {
  //   _clubdata = _clubsdata[club];
  // }

  List<Clubs>? get clubsdata => _clubsdata;

  Clubs get clubdata => _clubdata;

  List<String> get clubname => _clubName;
}
