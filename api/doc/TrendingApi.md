# openapi.api.TrendingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchTrendingGet**](TrendingApi.md#searchtrendingget) | **GET** /search/trending | Get trending search coins (Top-7) on CoinGecko in the last 24 hours


# **searchTrendingGet**
> searchTrendingGet()

Get trending search coins (Top-7) on CoinGecko in the last 24 hours

Top-7 trending coins on CoinGecko as searched by users in the last 24 hours (Ordered by most popular first)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TrendingApi();

try {
    api_instance.searchTrendingGet();
} catch (e) {
    print('Exception when calling TrendingApi->searchTrendingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

