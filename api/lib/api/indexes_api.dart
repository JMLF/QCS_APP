//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IndexesApi {
  IndexesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all market indexes
  ///
  /// List all market indexes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<Response> indexesGetWithHttpInfo({ int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/indexes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all market indexes
  ///
  /// List all market indexes
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<void> indexesGet({ int? perPage, int? page, }) async {
    final response = await indexesGetWithHttpInfo( perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// list market indexes id and name
  ///
  /// list market indexes id and name
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> indexesListGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/indexes/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// list market indexes id and name
  ///
  /// list market indexes id and name
  Future<void> indexesListGet() async {
    final response = await indexesListGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// get market index by market id and index id
  ///
  /// get market index by market id and index id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] marketId (required):
  ///   pass the market id (can be obtained from /exchanges/list)
  ///
  /// * [String] id (required):
  ///   pass the index id (can be obtained from /indexes/list)
  Future<Response> indexesMarketIdIdGetWithHttpInfo(String marketId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/indexes/{market_id}/{id}'
      .replaceAll('{market_id}', marketId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// get market index by market id and index id
  ///
  /// get market index by market id and index id
  ///
  /// Parameters:
  ///
  /// * [String] marketId (required):
  ///   pass the market id (can be obtained from /exchanges/list)
  ///
  /// * [String] id (required):
  ///   pass the index id (can be obtained from /indexes/list)
  Future<void> indexesMarketIdIdGet(String marketId, String id,) async {
    final response = await indexesMarketIdIdGetWithHttpInfo(marketId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
