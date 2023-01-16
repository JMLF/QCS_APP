# openapi.api.NftsBetaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nftsAssetPlatformIdContractContractAddressGet**](NftsBetaApi.md#nftsassetplatformidcontractcontractaddressget) | **GET** /nfts/{asset_platform_id}/contract/{contract_address} | Get current data (name, price_floor, volume_24h ...) for an NFT collection.
[**nftsIdGet**](NftsBetaApi.md#nftsidget) | **GET** /nfts/{id} | Get current data (name, price_floor, volume_24h ...) for an NFT collection
[**nftsListGet**](NftsBetaApi.md#nftslistget) | **GET** /nfts/list | List all supported NFT ids, paginated by 100 items per page, paginated to 100 items


# **nftsAssetPlatformIdContractContractAddressGet**
> nftsAssetPlatformIdContractContractAddressGet(assetPlatformId, contractAddress)

Get current data (name, price_floor, volume_24h ...) for an NFT collection.

Get current data (name, price_floor, volume_24h ...) for an NFT collection. *Solana NFT is not supported for this endpoint, please use <b>`/nfts/{id}`</b> endpoint instead.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NftsBetaApi();
final assetPlatformId = assetPlatformId_example; // String | The id of the platform issuing tokens (See asset_platforms endpoint for list of options, use filter=nft param)
final contractAddress = contractAddress_example; // String | The contract_address of the nft collection (/nfts/list for list of nft collection with metadata)

try {
    api_instance.nftsAssetPlatformIdContractContractAddressGet(assetPlatformId, contractAddress);
} catch (e) {
    print('Exception when calling NftsBetaApi->nftsAssetPlatformIdContractContractAddressGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetPlatformId** | **String**| The id of the platform issuing tokens (See asset_platforms endpoint for list of options, use filter=nft param) | 
 **contractAddress** | **String**| The contract_address of the nft collection (/nfts/list for list of nft collection with metadata) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsIdGet**
> nftsIdGet(id)

Get current data (name, price_floor, volume_24h ...) for an NFT collection

Get current data (name, price_floor, volume_24h ...) for an NFT collection. native_currency (string) is only a representative of the currency.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NftsBetaApi();
final id = id_example; // String | id of nft collection (can be obtained from /nfts/list)

try {
    api_instance.nftsIdGet(id);
} catch (e) {
    print('Exception when calling NftsBetaApi->nftsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of nft collection (can be obtained from /nfts/list) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsListGet**
> nftsListGet(order, assetPlatformId, perPage, page)

List all supported NFT ids, paginated by 100 items per page, paginated to 100 items

Use this to obtain all the NFT ids in order to make API calls, paginated to 100 items

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NftsBetaApi();
final order = order_example; // String | valid values: <b>h24_volume_native_asc, h24_volume_native_desc, floor_price_native_asc, floor_price_native_desc, market_cap_native_asc, market_cap_native_desc, market_cap_usd_asc, market_cap_usd_desc</b>
final assetPlatformId = assetPlatformId_example; // String | The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
final perPage = 56; // int | Total results per page
final page = 56; // int | Page through results

try {
    api_instance.nftsListGet(order, assetPlatformId, perPage, page);
} catch (e) {
    print('Exception when calling NftsBetaApi->nftsListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| valid values: <b>h24_volume_native_asc, h24_volume_native_desc, floor_price_native_asc, floor_price_native_desc, market_cap_native_asc, market_cap_native_desc, market_cap_usd_asc, market_cap_usd_desc</b> | [optional] 
 **assetPlatformId** | **String**| The id of the platform issuing tokens (See asset_platforms endpoint for list of options) | [optional] 
 **perPage** | **int**| Total results per page | [optional] 
 **page** | **int**| Page through results | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

