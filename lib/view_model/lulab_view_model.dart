import 'package:flutter/material.dart';

import '../model/clubs_model.dart';

class LulabViewModel with ChangeNotifier {
  int pageindex = 0;

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  List<Clubs> _clubsdata = [];

  Clubs? _clubdata;

  List<String> _clubName = [];

  bool _iconsdate = true;

  void toPage(int page) {
    pageindex = page;
    notifyListeners();
  }

  void iconSdate(bool sdate) {
    _iconsdate = sdate;
    notifyListeners();
  }

  void setClubsList(List<Clubs> clubsdata) {
    _clubsdata = clubsdata;

    notifyListeners();
  }

  //提取俱乐部名字并转成列表
  void getClubNameList(List<Clubs> clubsdata) {
    if (clubsdata.isNotEmpty) {
      _clubName = clubsdata.map((club) => club.clubname.toString()).toList();
    }
    notifyListeners();
  }

  //获取俱乐部信息
  void chooseClub(int club) {
    _clubdata = _clubsdata[club];
  }

  List<Clubs>? get clubsdata => _clubsdata;

  Clubs? get clubdata => _clubdata;

  List<String> get clubname => _clubName;

  bool get iconsdate => _iconsdate;

  GlobalKey<ScaffoldState> get drawerKey => _drawerKey;
}
