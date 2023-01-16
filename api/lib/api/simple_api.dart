//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SimpleApi {
  SimpleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the current price of any cryptocurrencies in any other supported currencies that you need.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   id of coins, comma-separated if querying more than 1 coin *refers to <b>`coins/list`</b>
  ///
  /// * [String] vsCurrencies (required):
  ///   vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
  ///
  /// * [String] includeMarketCap:
  ///   <b>true/false</b> to include market_cap, <b>default: false</b>
  ///
  /// * [String] include24hrVol:
  ///   <b>true/false</b> to include 24hr_vol, <b>default: false</b>
  ///
  /// * [String] include24hrChange:
  ///   <b>true/false</b> to include 24hr_change, <b>default: false</b>
  ///
  /// * [String] includeLastUpdatedAt:
  ///   <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
  ///
  /// * [String] precision:
  ///   <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value
  Future<Response> simplePriceGetWithHttpInfo(String ids, String vsCurrencies, { String? includeMarketCap, String? include24hrVol, String? include24hrChange, String? includeLastUpdatedAt, String? precision, }) async {
    // ignore: prefer_const_declarations
    final path = r'/simple/price';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));
      queryParams.addAll(_queryParams('', 'vs_currencies', vsCurrencies));
    if (includeMarketCap != null) {
      queryParams.addAll(_queryParams('', 'include_market_cap', includeMarketCap));
    }
    if (include24hrVol != null) {
      queryParams.addAll(_queryParams('', 'include_24hr_vol', include24hrVol));
    }
    if (include24hrChange != null) {
      queryParams.addAll(_queryParams('', 'include_24hr_change', include24hrChange));
    }
    if (includeLastUpdatedAt != null) {
      queryParams.addAll(_queryParams('', 'include_last_updated_at', includeLastUpdatedAt));
    }
    if (precision != null) {
      queryParams.addAll(_queryParams('', 'precision', precision));
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

  /// Get the current price of any cryptocurrencies in any other supported currencies that you need.
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   id of coins, comma-separated if querying more than 1 coin *refers to <b>`coins/list`</b>
  ///
  /// * [String] vsCurrencies (required):
  ///   vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
  ///
  /// * [String] includeMarketCap:
  ///   <b>true/false</b> to include market_cap, <b>default: false</b>
  ///
  /// * [String] include24hrVol:
  ///   <b>true/false</b> to include 24hr_vol, <b>default: false</b>
  ///
  /// * [String] include24hrChange:
  ///   <b>true/false</b> to include 24hr_change, <b>default: false</b>
  ///
  /// * [String] includeLastUpdatedAt:
  ///   <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
  ///
  /// * [String] precision:
  ///   <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value
  Future<void> simplePriceGet(String ids, String vsCurrencies, { String? includeMarketCap, String? include24hrVol, String? include24hrChange, String? includeLastUpdatedAt, String? precision, }) async {
    final response = await simplePriceGetWithHttpInfo(ids, vsCurrencies,  includeMarketCap: includeMarketCap, include24hrVol: include24hrVol, include24hrChange: include24hrChange, includeLastUpdatedAt: includeLastUpdatedAt, precision: precision, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get list of supported_vs_currencies.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> simpleSupportedVsCurrenciesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/simple/supported_vs_currencies';

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

  /// Get list of supported_vs_currencies.
  Future<void> simpleSupportedVsCurrenciesGet() async {
    final response = await simpleSupportedVsCurrenciesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get current price of tokens (using contract addresses) for a given platform in any other currency that you need.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddresses (required):
  ///   The contract address of tokens, comma separated
  ///
  /// * [String] vsCurrencies (required):
  ///   vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
  ///
  /// * [String] includeMarketCap:
  ///   <b>true/false</b> to include market_cap, <b>default: false</b>
  ///
  /// * [String] include24hrVol:
  ///   <b>true/false</b> to include 24hr_vol, <b>default: false</b>
  ///
  /// * [String] include24hrChange:
  ///   <b>true/false</b> to include 24hr_change, <b>default: false</b>
  ///
  /// * [String] includeLastUpdatedAt:
  ///   <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
  ///
  /// * [String] precision:
  ///   <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value
  Future<Response> simpleTokenPriceIdGetWithHttpInfo(String id, String contractAddresses, String vsCurrencies, { String? includeMarketCap, String? include24hrVol, String? include24hrChange, String? includeLastUpdatedAt, String? precision, }) async {
    // ignore: prefer_const_declarations
    final path = r'/simple/token_price/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'contract_addresses', contractAddresses));
      queryParams.addAll(_queryParams('', 'vs_currencies', vsCurrencies));
    if (includeMarketCap != null) {
      queryParams.addAll(_queryParams('', 'include_market_cap', includeMarketCap));
    }
    if (include24hrVol != null) {
      queryParams.addAll(_queryParams('', 'include_24hr_vol', include24hrVol));
    }
    if (include24hrChange != null) {
      queryParams.addAll(_queryParams('', 'include_24hr_change', include24hrChange));
    }
    if (includeLastUpdatedAt != null) {
      queryParams.addAll(_queryParams('', 'include_last_updated_at', includeLastUpdatedAt));
    }
    if (precision != null) {
      queryParams.addAll(_queryParams('', 'precision', precision));
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

  /// Get current price of tokens (using contract addresses) for a given platform in any other currency that you need.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddresses (required):
  ///   The contract address of tokens, comma separated
  ///
  /// * [String] vsCurrencies (required):
  ///   vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
  ///
  /// * [String] includeMarketCap:
  ///   <b>true/false</b> to include market_cap, <b>default: false</b>
  ///
  /// * [String] include24hrVol:
  ///   <b>true/false</b> to include 24hr_vol, <b>default: false</b>
  ///
  /// * [String] include24hrChange:
  ///   <b>true/false</b> to include 24hr_change, <b>default: false</b>
  ///
  /// * [String] includeLastUpdatedAt:
  ///   <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
  ///
  /// * [String] precision:
  ///   <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value
  Future<void> simpleTokenPriceIdGet(String id, String contractAddresses, String vsCurrencies, { String? includeMarketCap, String? include24hrVol, String? include24hrChange, String? includeLastUpdatedAt, String? precision, }) async {
    final response = await simpleTokenPriceIdGetWithHttpInfo(id, contractAddresses, vsCurrencies,  includeMarketCap: includeMarketCap, include24hrVol: include24hrVol, include24hrChange: include24hrChange, includeLastUpdatedAt: includeLastUpdatedAt, precision: precision, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
