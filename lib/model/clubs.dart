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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clubname'] = this.clubname;
    data['title'] = this.title;
    data['image'] = this.image;
    data['summarize'] = this.summarize;
    data['introduce'] = this.introduce;
    return data;
  }
}
