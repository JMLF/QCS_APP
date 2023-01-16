//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssetPlatformsApi {
  AssetPlatformsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all asset platforms (Blockchain networks)
  ///
  /// List all asset platforms
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filter:
  ///   apply relevant filters to results  valid values: \"nft\" (asset_platform nft-support)
  Future<Response> assetPlatformsGetWithHttpInfo({ String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset_platforms';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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

  /// List all asset platforms (Blockchain networks)
  ///
  /// List all asset platforms
  ///
  /// Parameters:
  ///
  /// * [String] filter:
  ///   apply relevant filters to results  valid values: \"nft\" (asset_platform nft-support)
  Future<void> assetPlatformsGet({ String? filter, }) async {
    final response = await assetPlatformsGetWithHttpInfo( filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
