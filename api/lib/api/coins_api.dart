//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CoinsApi {
  CoinsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get current data (name, price, market, ... including exchange tickers) for a coin
  ///
  /// Get current data (name, price, market, ... including exchange tickers) for a coin.<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/coins/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] localization:
  ///   Include all localized languages in response (true/false) <b>[default: true]</b>
  ///
  /// * [bool] tickers:
  ///   Include tickers data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] marketData:
  ///   Include market_data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] communityData:
  ///   Include community_data data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] developerData:
  ///   Include developer_data data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] sparkline:
  ///   Include sparkline 7 days data (eg. true, false) <b>[default: false]</b>
  Future<Response> coinsIdGetWithHttpInfo(String id, { String? localization, bool? tickers, bool? marketData, bool? communityData, bool? developerData, bool? sparkline, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (localization != null) {
      queryParams.addAll(_queryParams('', 'localization', localization));
    }
    if (tickers != null) {
      queryParams.addAll(_queryParams('', 'tickers', tickers));
    }
    if (marketData != null) {
      queryParams.addAll(_queryParams('', 'market_data', marketData));
    }
    if (communityData != null) {
      queryParams.addAll(_queryParams('', 'community_data', communityData));
    }
    if (developerData != null) {
      queryParams.addAll(_queryParams('', 'developer_data', developerData));
    }
    if (sparkline != null) {
      queryParams.addAll(_queryParams('', 'sparkline', sparkline));
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

  /// Get current data (name, price, market, ... including exchange tickers) for a coin
  ///
  /// Get current data (name, price, market, ... including exchange tickers) for a coin.<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/coins/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] localization:
  ///   Include all localized languages in response (true/false) <b>[default: true]</b>
  ///
  /// * [bool] tickers:
  ///   Include tickers data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] marketData:
  ///   Include market_data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] communityData:
  ///   Include community_data data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] developerData:
  ///   Include developer_data data (true/false) <b>[default: true]</b>
  ///
  /// * [bool] sparkline:
  ///   Include sparkline 7 days data (eg. true, false) <b>[default: false]</b>
  Future<void> coinsIdGet(String id, { String? localization, bool? tickers, bool? marketData, bool? communityData, bool? developerData, bool? sparkline, }) async {
    final response = await coinsIdGetWithHttpInfo(id,  localization: localization, tickers: tickers, marketData: marketData, communityData: communityData, developerData: developerData, sparkline: sparkline, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get historical data (name, price, market, stats) at a given date for a coin
  ///
  /// Get historical data (name, price, market, stats) at a given date for a coin 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] date (required):
  ///   The date of data snapshot in dd-mm-yyyy eg. 30-12-2017
  ///
  /// * [String] localization:
  ///   Set to false to exclude localized languages in response
  Future<Response> coinsIdHistoryGetWithHttpInfo(String id, String date, { String? localization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/history'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'date', date));
    if (localization != null) {
      queryParams.addAll(_queryParams('', 'localization', localization));
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

  /// Get historical data (name, price, market, stats) at a given date for a coin
  ///
  /// Get historical data (name, price, market, stats) at a given date for a coin 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] date (required):
  ///   The date of data snapshot in dd-mm-yyyy eg. 30-12-2017
  ///
  /// * [String] localization:
  ///   Set to false to exclude localized languages in response
  Future<void> coinsIdHistoryGet(String id, String date, { String? localization, }) async {
    final response = await coinsIdHistoryGetWithHttpInfo(id, date,  localization: localization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get historical market data include price, market cap, and 24h volume (granularity auto)
  ///
  /// Get historical market data include price, market cap, and 24h volume (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///   Data up to number of days ago (eg. 1,14,30,max)
  ///
  /// * [String] interval:
  ///   Data interval. Possible value: daily
  Future<Response> coinsIdMarketChartGetWithHttpInfo(String id, String vsCurrency, String days, { String? interval, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/market_chart'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vs_currency', vsCurrency));
      queryParams.addAll(_queryParams('', 'days', days));
    if (interval != null) {
      queryParams.addAll(_queryParams('', 'interval', interval));
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

  /// Get historical market data include price, market cap, and 24h volume (granularity auto)
  ///
  /// Get historical market data include price, market cap, and 24h volume (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///   Data up to number of days ago (eg. 1,14,30,max)
  ///
  /// * [String] interval:
  ///   Data interval. Possible value: daily
  Future<void> coinsIdMarketChartGet(String id, String vsCurrency, String days, { String? interval, }) async {
    final response = await coinsIdMarketChartGetWithHttpInfo(id, vsCurrency, days,  interval: interval, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)
  ///
  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] from (required):
  ///   From date in UNIX Timestamp (eg. 1392577232)
  ///
  /// * [String] to (required):
  ///   To date in UNIX Timestamp (eg. 1422577232)
  Future<Response> coinsIdMarketChartRangeGetWithHttpInfo(String id, String vsCurrency, String from, String to,) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/market_chart/range'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vs_currency', vsCurrency));
      queryParams.addAll(_queryParams('', 'from', from));
      queryParams.addAll(_queryParams('', 'to', to));

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

  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)
  ///
  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] from (required):
  ///   From date in UNIX Timestamp (eg. 1392577232)
  ///
  /// * [String] to (required):
  ///   To date in UNIX Timestamp (eg. 1422577232)
  Future<void> coinsIdMarketChartRangeGet(String id, String vsCurrency, String from, String to,) async {
    final response = await coinsIdMarketChartRangeGetWithHttpInfo(id, vsCurrency, from, to,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get coin's OHLC
  ///
  /// Candle's body:  1 - 2 days: 30 minutes 3 - 30 days: 4 hours 31 days and beyond: 4 days
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins/list) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///    Data up to number of days ago (1/7/14/30/90/180/365/max)
  Future<Response> coinsIdOhlcGetWithHttpInfo(String id, String vsCurrency, String days,) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/ohlc'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vs_currency', vsCurrency));
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

  /// Get coin's OHLC
  ///
  /// Candle's body:  1 - 2 days: 30 minutes 3 - 30 days: 4 hours 31 days and beyond: 4 days
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins/list) eg. bitcoin
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///    Data up to number of days ago (1/7/14/30/90/180/365/max)
  Future<List<num>?> coinsIdOhlcGet(String id, String vsCurrency, String days,) async {
    final response = await coinsIdOhlcGetWithHttpInfo(id, vsCurrency, days,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<num>') as List)
        .cast<num>()
        .toList();

    }
    return null;
  }

  /// Get coin tickers (paginated to 100 items)
  ///
  /// Get coin tickers (paginated to 100 items)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins/list) eg. bitcoin
  ///
  /// * [String] exchangeIds:
  ///   filter results by exchange_ids (ref: v3/exchanges/list)
  ///
  /// * [String] includeExchangeLogo:
  ///   flag to show exchange_logo
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [String] order:
  ///   valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>
  ///
  /// * [String] depth:
  ///   flag to show 2% orderbook depth. valid values: true, false
  Future<Response> coinsIdTickersGetWithHttpInfo(String id, { String? exchangeIds, String? includeExchangeLogo, int? page, String? order, String? depth, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/tickers'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exchangeIds != null) {
      queryParams.addAll(_queryParams('', 'exchange_ids', exchangeIds));
    }
    if (includeExchangeLogo != null) {
      queryParams.addAll(_queryParams('', 'include_exchange_logo', includeExchangeLogo));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (depth != null) {
      queryParams.addAll(_queryParams('', 'depth', depth));
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

  /// Get coin tickers (paginated to 100 items)
  ///
  /// Get coin tickers (paginated to 100 items)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   pass the coin id (can be obtained from /coins/list) eg. bitcoin
  ///
  /// * [String] exchangeIds:
  ///   filter results by exchange_ids (ref: v3/exchanges/list)
  ///
  /// * [String] includeExchangeLogo:
  ///   flag to show exchange_logo
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [String] order:
  ///   valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>
  ///
  /// * [String] depth:
  ///   flag to show 2% orderbook depth. valid values: true, false
  Future<void> coinsIdTickersGet(String id, { String? exchangeIds, String? includeExchangeLogo, int? page, String? order, String? depth, }) async {
    final response = await coinsIdTickersGetWithHttpInfo(id,  exchangeIds: exchangeIds, includeExchangeLogo: includeExchangeLogo, page: page, order: order, depth: depth, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all supported coins id, name and symbol (no pagination required)
  ///
  /// Use this to obtain all the coins' id in order to make API calls
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] includePlatform:
  ///   flag to include platform contract addresses (eg. 0x.... for Ethereum based tokens).   valid values: true, false
  Future<Response> coinsListGetWithHttpInfo({ bool? includePlatform, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includePlatform != null) {
      queryParams.addAll(_queryParams('', 'include_platform', includePlatform));
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

  /// List all supported coins id, name and symbol (no pagination required)
  ///
  /// Use this to obtain all the coins' id in order to make API calls
  ///
  /// Parameters:
  ///
  /// * [bool] includePlatform:
  ///   flag to include platform contract addresses (eg. 0x.... for Ethereum based tokens).   valid values: true, false
  Future<void> coinsListGet({ bool? includePlatform, }) async {
    final response = await coinsListGetWithHttpInfo( includePlatform: includePlatform, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all supported coins price, market cap, volume, and market related data
  ///
  /// Use this to obtain all the coins market data (price, market cap, volume)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] ids:
  ///   The ids of the coin, comma separated crytocurrency symbols (base). refers to `/coins/list`.
  ///
  /// * [String] category:
  ///   filter by coin category. Refer to /coin/categories/list
  ///
  /// * [String] order:
  ///   valid values: <b>market_cap_desc, gecko_desc, gecko_asc, market_cap_asc, market_cap_desc, volume_asc, volume_desc, id_asc, id_desc</b> sort results by field.
  ///
  /// * [int] perPage:
  ///   valid values: 1..250  Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [bool] sparkline:
  ///   Include sparkline 7 days data (eg. true, false)
  ///
  /// * [String] priceChangePercentage:
  ///   Include price change percentage in <b>1h, 24h, 7d, 14d, 30d, 200d, 1y</b> (eg. '`1h,24h,7d`' comma-separated, invalid values will be discarded)
  Future<Response> coinsMarketsGetWithHttpInfo(String vsCurrency, { String? ids, String? category, String? order, int? perPage, int? page, bool? sparkline, String? priceChangePercentage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/markets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'vs_currency', vsCurrency));
    if (ids != null) {
      queryParams.addAll(_queryParams('', 'ids', ids));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (sparkline != null) {
      queryParams.addAll(_queryParams('', 'sparkline', sparkline));
    }
    if (priceChangePercentage != null) {
      queryParams.addAll(_queryParams('', 'price_change_percentage', priceChangePercentage));
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

  /// List all supported coins price, market cap, volume, and market related data
  ///
  /// Use this to obtain all the coins market data (price, market cap, volume)
  ///
  /// Parameters:
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] ids:
  ///   The ids of the coin, comma separated crytocurrency symbols (base). refers to `/coins/list`.
  ///
  /// * [String] category:
  ///   filter by coin category. Refer to /coin/categories/list
  ///
  /// * [String] order:
  ///   valid values: <b>market_cap_desc, gecko_desc, gecko_asc, market_cap_asc, market_cap_desc, volume_asc, volume_desc, id_asc, id_desc</b> sort results by field.
  ///
  /// * [int] perPage:
  ///   valid values: 1..250  Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  ///
  /// * [bool] sparkline:
  ///   Include sparkline 7 days data (eg. true, false)
  ///
  /// * [String] priceChangePercentage:
  ///   Include price change percentage in <b>1h, 24h, 7d, 14d, 30d, 200d, 1y</b> (eg. '`1h,24h,7d`' comma-separated, invalid values will be discarded)
  Future<void> coinsMarketsGet(String vsCurrency, { String? ids, String? category, String? order, int? perPage, int? page, bool? sparkline, String? priceChangePercentage, }) async {
    final response = await coinsMarketsGetWithHttpInfo(vsCurrency,  ids: ids, category: category, order: order, perPage: perPage, page: page, sparkline: sparkline, priceChangePercentage: priceChangePercentage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
