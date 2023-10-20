import 'package:graphql_flutter/graphql_flutter.dart';

import '../config/api_config.dart';

class GraphQLService {
  static final HttpLink _httpLink = HttpLink(Api.graphqlUrl);

  final GraphQLClient _client;

  GraphQLService() : _client = _initClient();

  static GraphQLClient _initClient() {
    final Link link = _httpLink;

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  Future<QueryResult> query({
    required String schema,
    Map<String, dynamic> variables = const {},
  }) {
    return _client.query(QueryOptions(
      document: gql(schema),
      variables: variables,
    ));
  }

  Future<QueryResult> mutate({
    required String schema,
    Map<String, dynamic> variables = const {},
  }) {
    return _client.mutate(MutationOptions(
      document: gql(schema),
      variables: variables,
    ));
  }
}
