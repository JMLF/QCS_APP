//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExchangesApi {
  ExchangesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all exchanges (Active with trading volumes)
  ///
  /// List all exchanges
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Valid values: 1...250 Total results per page Default value:: 100
  ///
  /// * [String] page:
  ///   page through results
  Future<Response> exchangesGetWithHttpInfo({ int? perPage, String? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/exchanges';

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

  /// List all exchanges (Active with trading volumes)
  ///
  /// List all exchanges
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Valid values: 1...250 Total results per page Default value:: 100
  ///
  /// * [String] page:
  ///   page through results
  Future<void> exchangesGet({ int? perPage, String? page, }) async {
    final response = await exchangesGetWithHttpInfo( perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get exchange volume in BTC and top 100 tickers only
  ///
  /// Get exchange volume in BTC and tickers<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/exchanges/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  Future<Response> exchangesIdGetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/exchanges/{id}'
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

  /// Get exchange volume in BTC and top 100 tickers only
  ///
  /// Get exchange volume in BTC and tickers<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/exchanges/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  Future<void> exchangesIdGet(String id,) async {
    final response = await exchangesIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get exchange tickers (paginated, 100 tickers per page)
  ///
  /// Get exchange tickers (paginated)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  ///
  /// * [String] coinIds:
  ///   filter tickers by coin_ids (ref: v3/coins/list)
  ///
  /// * [String] includeExchangeLogo:
  ///   flag to show exchange_logo
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [String] depth:
  ///   flag to show 2% orderbook depth i.e., cost_to_move_up_usd and cost_to_move_down_usd
  ///
  /// * [String] order:
  ///   valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>
  Future<Response> exchangesIdTickersGetWithHttpInfo(String id, { String? coinIds, String? includeExchangeLogo, int? page, String? depth, String? order, }) async {
    // ignore: prefer_const_declarations
    final path = r'/exchanges/{id}/tickers'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (coinIds != null) {
      queryParams.addAll(_queryParams('', 'coin_ids', coinIds));
    }
    if (includeExchangeLogo != null) {
      queryParams.addAll(_queryParams('', 'include_exchange_logo', includeExchangeLogo));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (depth != null) {
      queryParams.addAll(_queryParams('', 'depth', depth));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
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

  /// Get exchange tickers (paginated, 100 tickers per page)
  ///
  /// Get exchange tickers (paginated)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  ///
  /// * [String] coinIds:
  ///   filter tickers by coin_ids (ref: v3/coins/list)
  ///
  /// * [String] includeExchangeLogo:
  ///   flag to show exchange_logo
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [String] depth:
  ///   flag to show 2% orderbook depth i.e., cost_to_move_up_usd and cost_to_move_down_usd
  ///
  /// * [String] order:
  ///   valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>
  Future<void> exchangesIdTickersGet(String id, { String? coinIds, String? includeExchangeLogo, int? page, String? depth, String? order, }) async {
    final response = await exchangesIdTickersGetWithHttpInfo(id,  coinIds: coinIds, includeExchangeLogo: includeExchangeLogo, page: page, depth: depth, order: order, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get volume_chart data for a given exchange
  ///
  /// Get volume_chart data for a given exchange
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  ///
  /// * [int] days (required):
  ///    Data up to number of days ago (eg. 1,14,30)
  Future<Response> exchangesIdVolumeChartGetWithHttpInfo(String id, int days,) async {
    // ignore: prefer_const_declarations
    final path = r'/exchanges/{id}/volume_chart'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'days', days));

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

  /// Get volume_chart data for a given exchange
  ///
  /// Get volume_chart data for a given exchange
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the exchange id (can be obtained from /exchanges/list) eg. binance
  ///
  /// * [int] days (required):
  ///    Data up to number of days ago (eg. 1,14,30)
  Future<void> exchangesIdVolumeChartGet(String id, int days,) async {
    final response = await exchangesIdVolumeChartGetWithHttpInfo(id, days,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all supported markets id and name (no pagination required)
  ///
  /// Use this to obtain all the markets' id in order to make API calls
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> exchangesListGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/exchanges/list';

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

  /// List all supported markets id and name (no pagination required)
  ///
  /// Use this to obtain all the markets' id in order to make API calls
  Future<void> exchangesListGet() async {
    final response = await exchangesListGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
