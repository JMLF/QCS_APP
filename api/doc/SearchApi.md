# openapi.api.SearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchGet**](SearchApi.md#searchget) | **GET** /search | Search for coins, categories and markets on CoinGecko


# **searchGet**
> searchGet(query)

Search for coins, categories and markets on CoinGecko

Search for coins, categories and markets listed on CoinGecko ordered by largest Market Cap first

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SearchApi();
final query = query_example; // String | Search string

try {
    api_instance.searchGet(query);
} catch (e) {
    print('Exception when calling SearchApi->searchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search string | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

