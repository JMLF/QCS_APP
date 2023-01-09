//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TrendingApi {
  TrendingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get trending search coins (Top-7) on CoinGecko in the last 24 hours
  ///
  /// Top-7 trending coins on CoinGecko as searched by users in the last 24 hours (Ordered by most popular first)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> searchTrendingGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/search/trending';

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

  /// Get trending search coins (Top-7) on CoinGecko in the last 24 hours
  ///
  /// Top-7 trending coins on CoinGecko as searched by users in the last 24 hours (Ordered by most popular first)
  Future<void> searchTrendingGet() async {
    final response = await searchTrendingGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
