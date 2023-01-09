//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DerivativesApi {
  DerivativesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all derivative exchanges
  ///
  /// List all derivative exchanges
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] order:
  ///   order results using following params name_asc，name_desc，open_interest_btc_asc，open_interest_btc_desc，trade_volume_24h_btc_asc，trade_volume_24h_btc_desc
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<Response> derivativesExchangesGetWithHttpInfo({ String? order, int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/derivatives/exchanges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
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

  /// List all derivative exchanges
  ///
  /// List all derivative exchanges
  ///
  /// Parameters:
  ///
  /// * [String] order:
  ///   order results using following params name_asc，name_desc，open_interest_btc_asc，open_interest_btc_desc，trade_volume_24h_btc_asc，trade_volume_24h_btc_desc
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<void> derivativesExchangesGet({ String? order, int? perPage, int? page, }) async {
    final response = await derivativesExchangesGetWithHttpInfo( order: order, perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// show derivative exchange data
  ///
  /// show derivative exchange data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from derivatives/exchanges/list) eg. bitmex
  ///
  /// * [String] includeTickers:
  ///   ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, leave blank to omit tickers data in response
  Future<Response> derivativesExchangesIdGetWithHttpInfo(String id, { String? includeTickers, }) async {
    // ignore: prefer_const_declarations
    final path = r'/derivatives/exchanges/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeTickers != null) {
      queryParams.addAll(_queryParams('', 'include_tickers', includeTickers));
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

  /// show derivative exchange data
  ///
  /// show derivative exchange data
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from derivatives/exchanges/list) eg. bitmex
  ///
  /// * [String] includeTickers:
  ///   ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, leave blank to omit tickers data in response
  Future<void> derivativesExchangesIdGet(String id, { String? includeTickers, }) async {
    final response = await derivativesExchangesIdGetWithHttpInfo(id,  includeTickers: includeTickers, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all derivative exchanges name and identifier
  ///
  /// List all derivative exchanges name and identifier
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> derivativesExchangesListGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/derivatives/exchanges/list';

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

  /// List all derivative exchanges name and identifier
  ///
  /// List all derivative exchanges name and identifier
  Future<void> derivativesExchangesListGet() async {
    final response = await derivativesExchangesListGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all derivative tickers
  ///
  /// List all derivative tickers
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] includeTickers:
  ///   ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, defaults to unexpired
  Future<Response> derivativesGetWithHttpInfo({ String? includeTickers, }) async {
    // ignore: prefer_const_declarations
    final path = r'/derivatives';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeTickers != null) {
      queryParams.addAll(_queryParams('', 'include_tickers', includeTickers));
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

  /// List all derivative tickers
  ///
  /// List all derivative tickers
  ///
  /// Parameters:
  ///
  /// * [String] includeTickers:
  ///   ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, defaults to unexpired
  Future<void> derivativesGet({ String? includeTickers, }) async {
    final response = await derivativesGetWithHttpInfo( includeTickers: includeTickers, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
