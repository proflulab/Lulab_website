class ClubsData {
  List<Clubs>? clubs;

  ClubsData({this.clubs});

  ClubsData.fromJson(Map<String, dynamic> json) {
    if (json['clubs'] != null) {
      clubs = <Clubs>[];
      json['clubs'].forEach((v) {
        clubs!.add(Clubs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (clubs != null) {
      data['clubs'] = clubs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Clubs {
  String? id;
  String? clubname;
  String? summarize;
  String? introduce;
  Image? image;

  Clubs({this.id, this.clubname, this.summarize, this.introduce, this.image});

  Clubs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubname = json['clubname'];
    summarize = json['summarize'];
    introduce = json['introduce'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['clubname'] = clubname;
    data['summarize'] = summarize;
    data['introduce'] = introduce;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    return data;
  }
}

class Image {
  String? url;

  Image({this.url});

  Image.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}
