//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExchangeRatesApi {
  ExchangeRatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get BTC-to-Currency exchange rates
  ///
  /// Get BTC-to-Currency exchange rates 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> exchangeRatesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/exchange_rates';

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

  /// Get BTC-to-Currency exchange rates
  ///
  /// Get BTC-to-Currency exchange rates 
  Future<void> exchangeRatesGet() async {
    final response = await exchangeRatesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
