# openapi.api.IndexesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**indexesGet**](IndexesApi.md#indexesget) | **GET** /indexes | List all market indexes
[**indexesListGet**](IndexesApi.md#indexeslistget) | **GET** /indexes/list | list market indexes id and name
[**indexesMarketIdIdGet**](IndexesApi.md#indexesmarketididget) | **GET** /indexes/{market_id}/{id} | get market index by market id and index id


# **indexesGet**
> indexesGet(perPage, page)

List all market indexes

List all market indexes

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IndexesApi();
final perPage = 56; // int | Total results per page
final page = 56; // int | Page through results

try {
    api_instance.indexesGet(perPage, page);
} catch (e) {
    print('Exception when calling IndexesApi->indexesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **indexesListGet**
> indexesListGet()

list market indexes id and name

list market indexes id and name

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IndexesApi();

try {
    api_instance.indexesListGet();
} catch (e) {
    print('Exception when calling IndexesApi->indexesListGet: $e\n');
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

# **indexesMarketIdIdGet**
> indexesMarketIdIdGet(marketId, id)

get market index by market id and index id

get market index by market id and index id

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IndexesApi();
final marketId = marketId_example; // String | pass the market id (can be obtained from /exchanges/list)
final id = id_example; // String | pass the index id (can be obtained from /indexes/list)

try {
    api_instance.indexesMarketIdIdGet(marketId, id);
} catch (e) {
    print('Exception when calling IndexesApi->indexesMarketIdIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketId** | **String**| pass the market id (can be obtained from /exchanges/list) | 
 **id** | **String**| pass the index id (can be obtained from /indexes/list) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

