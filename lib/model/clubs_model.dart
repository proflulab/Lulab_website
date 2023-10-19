class ClubsData {
  List<ClubData>? data;

  ClubsData({this.data});

  ClubsData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ClubData>[];
      json['data'].forEach((v) {
        data!.add(ClubData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClubData {
  String? id;
  String? clubname;
  String? title;
  String? image;
  String? summarize;
  String? introduce;

  ClubData(
      {this.id,
      this.clubname,
      this.title,
      this.image,
      this.summarize,
      this.introduce});

  ClubData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubname = json['clubname'];
    title = json['title'];
    image = json['image'];
    summarize = json['summarize'];
    introduce = json['introduce'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['clubname'] = clubname;
    data['title'] = title;
    data['image'] = image;
    data['summarize'] = summarize;
    data['introduce'] = introduce;
    return data;
  }
}
