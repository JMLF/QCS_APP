//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NftsBetaApi {
  NftsBetaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection.
  ///
  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection. *Solana NFT is not supported for this endpoint, please use <b>`/nfts/{id}`</b> endpoint instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetPlatformId (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options, use filter=nft param)
  ///
  /// * [String] contractAddress (required):
  ///   The contract_address of the nft collection (/nfts/list for list of nft collection with metadata)
  Future<Response> nftsAssetPlatformIdContractContractAddressGetWithHttpInfo(String assetPlatformId, String contractAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/nfts/{asset_platform_id}/contract/{contract_address}'
      .replaceAll('{asset_platform_id}', assetPlatformId)
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

  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection.
  ///
  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection. *Solana NFT is not supported for this endpoint, please use <b>`/nfts/{id}`</b> endpoint instead.
  ///
  /// Parameters:
  ///
  /// * [String] assetPlatformId (required):
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options, use filter=nft param)
  ///
  /// * [String] contractAddress (required):
  ///   The contract_address of the nft collection (/nfts/list for list of nft collection with metadata)
  Future<void> nftsAssetPlatformIdContractContractAddressGet(String assetPlatformId, String contractAddress,) async {
    final response = await nftsAssetPlatformIdContractContractAddressGetWithHttpInfo(assetPlatformId, contractAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection
  ///
  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection. native_currency (string) is only a representative of the currency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of nft collection (can be obtained from /nfts/list)
  Future<Response> nftsIdGetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/nfts/{id}'
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

  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection
  ///
  /// Get current data (name, price_floor, volume_24h ...) for an NFT collection. native_currency (string) is only a representative of the currency.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of nft collection (can be obtained from /nfts/list)
  Future<void> nftsIdGet(String id,) async {
    final response = await nftsIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all supported NFT ids, paginated by 100 items per page, paginated to 100 items
  ///
  /// Use this to obtain all the NFT ids in order to make API calls, paginated to 100 items
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] order:
  ///   valid values: <b>h24_volume_native_asc, h24_volume_native_desc, floor_price_native_asc, floor_price_native_desc, market_cap_native_asc, market_cap_native_desc, market_cap_usd_asc, market_cap_usd_desc</b>
  ///
  /// * [String] assetPlatformId:
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<Response> nftsListGetWithHttpInfo({ String? order, String? assetPlatformId, int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/nfts/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (assetPlatformId != null) {
      queryParams.addAll(_queryParams('', 'asset_platform_id', assetPlatformId));
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

  /// List all supported NFT ids, paginated by 100 items per page, paginated to 100 items
  ///
  /// Use this to obtain all the NFT ids in order to make API calls, paginated to 100 items
  ///
  /// Parameters:
  ///
  /// * [String] order:
  ///   valid values: <b>h24_volume_native_asc, h24_volume_native_desc, floor_price_native_asc, floor_price_native_desc, market_cap_native_asc, market_cap_native_desc, market_cap_usd_asc, market_cap_usd_desc</b>
  ///
  /// * [String] assetPlatformId:
  ///   The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
  ///
  /// * [int] perPage:
  ///   Total results per page
  ///
  /// * [int] page:
  ///   Page through results
  Future<void> nftsListGet({ String? order, String? assetPlatformId, int? perPage, int? page, }) async {
    final response = await nftsListGetWithHttpInfo( order: order, assetPlatformId: assetPlatformId, perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
