import 'package:flutter/material.dart';

import '../model/clubs_model.dart';

class LulabViewModel with ChangeNotifier {
  int pageindex = 0;

  List<Clubs> _clubsdata = [];

  Clubs? _clubdata;

  List<String> _clubName = [];

  void toPage(int page) {
    pageindex = page;
    notifyListeners();
  }

  setClubsList(List<Clubs> clubsdata) {
    _clubsdata = clubsdata;

    notifyListeners();
  }

  //提取俱乐部名字并转成列表
  getClubNameList(List<Clubs> clubsdata) {
    if (clubsdata.isNotEmpty) {
      _clubName = clubsdata.map((club) => club.clubname.toString()).toList();
    }
    notifyListeners();
  }

  chooseClub(int club) {
    _clubdata = _clubsdata[club];
  }

  List<Clubs>? get clubsdata => _clubsdata;

  Clubs? get clubdata => _clubdata;

  List<String> get clubname => _clubName;
}
