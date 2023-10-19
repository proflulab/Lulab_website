import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/clubs_model.dart';
import '../view_model/lulab_view_model.dart';

class ClubsService {
  static Future<void> getClubs(LulabViewModel lulabViewModel) async {
    late List<ClubData> clubdata;
    final jsonFile =
        await rootBundle.loadString('assets/json/clubs.json'); // 替换成你的JSON文件路径
    final jsonData = json.decode(jsonFile);
    clubdata = ClubsData.fromJson(jsonData).data!;

    // 更新数据
    lulabViewModel.setClubsList(clubdata);
    lulabViewModel.getClubNameList(clubdata);
  }
}
