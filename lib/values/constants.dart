import 'package:flutter/services.dart';

// AssetImage(logoLulab)

class Assets {
  static const _base = 'assets/images'; // 设置基本路径

  static const String logoLulab = '$_base/lulab_logo.png';
  static const String logo = '$_base/logo.png';

  static const String homeLobby = '$_base/lobby.jpg';
  static const String luXiangqian = '$_base/LuXiangqian.png';

  static const String image1 = '$_base/image1.jpg';
  static const String image3 = '$_base/image3.jpg';
  static const String literacy = '$_base/literacy.png';
  static const String luyuminhong = '$_base/lu&yuminhong.jpg';

  static Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}
