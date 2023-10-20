class SchemaLulab {
  ///俱乐部数据获取

  static const String gqlClubs = r'''
query MyQuery {
  clubs {
    clubname
    summarize
    introduce
    image {
      url
    }
  }
}
''';
}
