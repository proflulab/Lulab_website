// import 'dart:convert';
// import 'package:flutter/services.dart';
// import 'package:flutter/material.dart';
// import '../api/gql_lulab.dart';

import '../graphql/schema_user.dart';
import '../model/clubs_model.dart';
import '../utils/graphql_client.dart';
import '../view_model/lulab_view_model.dart';

class ClubsService {
  static Future<void> getClubs(LulabViewModel lulabViewModel) async {
    late ClubsData clubsdata;
    late List<Clubs> clubdata;

    // 读取本地json文件内容
    // final jsonFile =
    //     await rootBundle.loadString('assets/json/clubs.json'); // 替换成你的JSON文件路径
    // final jsonData = json.decode(jsonFile);

    // clubsCategory() async {
    //   QueryResult response = await GraphqlClientUtil.query(
    //     schema: SchemaLulab.gqlClubs,
    //     variables: {},
    //   );
    //   print(response);

    //   return ClubsData.fromJson(response.data!);
    // }

    final GraphQLService graphQLService = GraphQLService();

    graphQLService.query(schema: SchemaLulab.gqlClubs).then((result) {
      if (result.hasException) {
        //print(result.exception.toString());
      } else if (result.isLoading) {
        // 处理加载中状态
      } else {
        // 处理数据
        clubsdata = ClubsData.fromJson(result.data!);
        clubdata = clubsdata.clubs!;

        // 更新数据
        lulabViewModel.setClubsList(clubdata);
        lulabViewModel.getClubNameList(clubdata);
      }
    });
  }
}
