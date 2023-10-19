import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

import '../config/api_config.dart';

class GraphqlClientUtil {
  static client() {
    final _httpLink = HttpLink("${Api.graphqlUrl} /graphql");

    return GraphQLClient(
      cache: GraphQLCache(),
      link: _httpLink,
    );
  }

  // 查询
  static Future query({
    required BuildContext? context,
    required String schema,
    required Map<String, dynamic> variables,
  }) async {
    QueryOptions options = QueryOptions(
      document: gql(schema),
      variables: variables,
    );

    QueryResult result = await client().query(options);
    if (result.isLoading) {
      debugPrint("正在加载");
      //return const Center(child: CircularProgressIndicator());
    }
    if (result.data == null) {
      debugPrint("没有数据");
      //return const Center(child: Text('Countries not found. /n找不到国家列表'));
    }
    if (result.hasException) {
      debugPrint(result.exception.toString());
      //throw result.exception;
    }

    return result;
  }

  // 操作
  static Future mutate({
    required BuildContext context,
    required String schema,
    required Map<String, dynamic> variables,
  }) async {
    MutationOptions options = MutationOptions(
      document: gql(schema),
      variables: variables,
    );

    QueryResult result = await client().mutate(options);
    if (result.hasException) {
      if (kDebugMode) {
        print(
          result.exception.toString(),
        );
      }
      //toastInfo(msg: result.exception.toString());
      //throw result.exception;
    }
    return result;
  }

  //   /// 错误处理
  // static _formatException(BuildContext context, OperationException exception) {
  //   var statusCode = '';
  //   try {
  //     statusCode = exception
  //         .graphqlErrors[0]?.extensions["exception"]["output"]["statusCode"]
  //         .toString();
  //     if (statusCode == '') {
  //       statusCode = exception.graphqlErrors[0]?.extensions["exception"]["code"]
  //           .toString();
  //     }
  //   } catch (e) {}

  //   switch (statusCode) {
  //     case '400': // 重新登录
  //       toastInfo(msg: "错误请求，提交数据错误！");
  //       break;
  //     case '401': // 没有认证
  //     case '403': // 没有授权
  //       toastInfo(msg: "账号无效、服务没有授权，请重新登录！");
  //       return goLoginPage(context);
  //     // break;
  //     default:
  //       toastInfo(msg: exception.toString());
  //   }
  //   throw exception;
  // }
}
