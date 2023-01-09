//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContractApi {
  ContractApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get coin info from contract address
  ///
  /// Get coin info from contract address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Asset platform (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  Future<Response> coinsIdContractContractAddressGetWithHttpInfo(String id, String contractAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/contract/{contract_address}'
      .replaceAll('{id}', id)
      .replaceAll('{contract_address}', contractAddress);

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

  /// Get coin info from contract address
  ///
  /// Get coin info from contract address
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Asset platform (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  Future<void> coinsIdContractContractAddressGet(String id, String contractAddress,) async {
    final response = await coinsIdContractContractAddressGetWithHttpInfo(id, contractAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get historical market data include price, market cap, and 24h volume (granularity auto) from a contract address 
  ///
  /// Get historical market data include price, market cap, and 24h volume (granularity auto) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///   Data up to number of days ago (eg. 1,14,30,max)
  Future<Response> coinsIdContractContractAddressMarketChartGetWithHttpInfo(String id, String contractAddress, String vsCurrency, String days,) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/contract/{contract_address}/market_chart/'
      .replaceAll('{id}', id)
      .replaceAll('{contract_address}', contractAddress);

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

  /// Get historical market data include price, market cap, and 24h volume (granularity auto) from a contract address 
  ///
  /// Get historical market data include price, market cap, and 24h volume (granularity auto) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] days (required):
  ///   Data up to number of days ago (eg. 1,14,30,max)
  Future<void> coinsIdContractContractAddressMarketChartGet(String id, String contractAddress, String vsCurrency, String days,) async {
    final response = await coinsIdContractContractAddressMarketChartGetWithHttpInfo(id, contractAddress, vsCurrency, days,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) from a contract address
  ///
  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] from (required):
  ///   From date in UNIX Timestamp (eg. 1392577232)
  ///
  /// * [String] to (required):
  ///   To date in UNIX Timestamp (eg. 1422577232)
  Future<Response> coinsIdContractContractAddressMarketChartRangeGetWithHttpInfo(String id, String contractAddress, String vsCurrency, String from, String to,) async {
    // ignore: prefer_const_declarations
    final path = r'/coins/{id}/contract/{contract_address}/market_chart/range'
      .replaceAll('{id}', id)
      .replaceAll('{contract_address}', contractAddress);

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

  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) from a contract address
  ///
  /// Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [String] contractAddress (required):
  ///   Token's contract address
  ///
  /// * [String] vsCurrency (required):
  ///   The target currency of market data (usd, eur, jpy, etc.)
  ///
  /// * [String] from (required):
  ///   From date in UNIX Timestamp (eg. 1392577232)
  ///
  /// * [String] to (required):
  ///   To date in UNIX Timestamp (eg. 1422577232)
  Future<void> coinsIdContractContractAddressMarketChartRangeGet(String id, String contractAddress, String vsCurrency, String from, String to,) async {
    final response = await coinsIdContractContractAddressMarketChartRangeGetWithHttpInfo(id, contractAddress, vsCurrency, from, to,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
