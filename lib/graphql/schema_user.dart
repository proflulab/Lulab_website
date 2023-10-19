class SchemaUser {
  ///验证码发送
  ///请求数据参考
  ///{"mobile":"15110880530","area":86}
  static const String gqlVerifySend = r'''
query verifySend($mobile:String!,$area:Int!){
  verifySend(mobile: $mobile,area: $area){
    status
    msg
  }
}
''';

  ///验证码验证
  ///请求数据参考
  ///{"mobile":"15110880530","area":86,"code":"312113"}
  static const String gqlVerifyCheck = r'''
query verifyCheck ($mobile: String!, $code: String!, $area: Int!) {
    verifyCheck (mobile: $mobile, code: $code, area: $area) {
        status
        msg
    }
}
''';
}
