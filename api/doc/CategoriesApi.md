# openapi.api.CategoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**coinsCategoriesGet**](CategoriesApi.md#coinscategoriesget) | **GET** /coins/categories | List all categories with market data
[**coinsCategoriesListGet**](CategoriesApi.md#coinscategorieslistget) | **GET** /coins/categories/list | List all categories


# **coinsCategoriesGet**
> coinsCategoriesGet(order)

List all categories with market data

List all categories with market data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CategoriesApi();
final order = order_example; // String | valid values: <b>market_cap_desc (default), market_cap_asc, name_desc, name_asc, market_cap_change_24h_desc and market_cap_change_24h_asc</b>

try {
    api_instance.coinsCategoriesGet(order);
} catch (e) {
    print('Exception when calling CategoriesApi->coinsCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| valid values: <b>market_cap_desc (default), market_cap_asc, name_desc, name_asc, market_cap_change_24h_desc and market_cap_change_24h_asc</b> | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsCategoriesListGet**
> coinsCategoriesListGet()

List all categories

List all categories

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CategoriesApi();

try {
    api_instance.coinsCategoriesListGet();
} catch (e) {
    print('Exception when calling CategoriesApi->coinsCategoriesListGet: $e\n');
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

