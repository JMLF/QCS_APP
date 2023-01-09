# openapi.api.AssetPlatformsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetPlatformsGet**](AssetPlatformsApi.md#assetplatformsget) | **GET** /asset_platforms | List all asset platforms (Blockchain networks)


# **assetPlatformsGet**
> assetPlatformsGet(filter)

List all asset platforms (Blockchain networks)

List all asset platforms

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AssetPlatformsApi();
final filter = filter_example; // String | apply relevant filters to results  valid values: \"nft\" (asset_platform nft-support)

try {
    api_instance.assetPlatformsGet(filter);
} catch (e) {
    print('Exception when calling AssetPlatformsApi->assetPlatformsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| apply relevant filters to results  valid values: \"nft\" (asset_platform nft-support) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

