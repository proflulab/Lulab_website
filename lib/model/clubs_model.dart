class ClubsData {
  List<Clubs>? clubs;

  ClubsData({this.clubs});

  ClubsData.fromJson(Map<String, dynamic> json) {
    if (json['clubs'] != null) {
      clubs = <Clubs>[];
      json['clubs'].forEach((v) {
        clubs!.add(new Clubs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clubs != null) {
      data['clubs'] = this.clubs!.map((v) => v.toJson()).toList();
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
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clubname'] = this.clubname;
    data['summarize'] = this.summarize;
    data['introduce'] = this.introduce;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
