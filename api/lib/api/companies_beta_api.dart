//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CompaniesBetaApi {
  CompaniesBetaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get public companies data
  ///
  /// Get public companies bitcoin or ethereum holdings (Ordered by total holdings descending)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] coinId (required):
  ///   bitcoin or ethereum
  Future<Response> companiesPublicTreasuryCoinIdGetWithHttpInfo(String coinId,) async {
    // ignore: prefer_const_declarations
    final path = r'/companies/public_treasury/{coin_id}'
      .replaceAll('{coin_id}', coinId);

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

  /// Get public companies data
  ///
  /// Get public companies bitcoin or ethereum holdings (Ordered by total holdings descending)
  ///
  /// Parameters:
  ///
  /// * [String] coinId (required):
  ///   bitcoin or ethereum
  Future<void> companiesPublicTreasuryCoinIdGet(String coinId,) async {
    final response = await companiesPublicTreasuryCoinIdGetWithHttpInfo(coinId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
