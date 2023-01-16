# openapi.api.DerivativesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**derivativesExchangesGet**](DerivativesApi.md#derivativesexchangesget) | **GET** /derivatives/exchanges | List all derivative exchanges
[**derivativesExchangesIdGet**](DerivativesApi.md#derivativesexchangesidget) | **GET** /derivatives/exchanges/{id} | show derivative exchange data
[**derivativesExchangesListGet**](DerivativesApi.md#derivativesexchangeslistget) | **GET** /derivatives/exchanges/list | List all derivative exchanges name and identifier
[**derivativesGet**](DerivativesApi.md#derivativesget) | **GET** /derivatives | List all derivative tickers


# **derivativesExchangesGet**
> derivativesExchangesGet(order, perPage, page)

List all derivative exchanges

List all derivative exchanges

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DerivativesApi();
final order = order_example; // String | order results using following params name_asc，name_desc，open_interest_btc_asc，open_interest_btc_desc，trade_volume_24h_btc_asc，trade_volume_24h_btc_desc
final perPage = 56; // int | Total results per page
final page = 56; // int | Page through results

try {
    api_instance.derivativesExchangesGet(order, perPage, page);
} catch (e) {
    print('Exception when calling DerivativesApi->derivativesExchangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| order results using following params name_asc，name_desc，open_interest_btc_asc，open_interest_btc_desc，trade_volume_24h_btc_asc，trade_volume_24h_btc_desc | [optional] 
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

# **derivativesExchangesIdGet**
> derivativesExchangesIdGet(id, includeTickers)

show derivative exchange data

show derivative exchange data

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DerivativesApi();
final id = id_example; // String | pass the exchange id (can be obtained from derivatives/exchanges/list) eg. bitmex
final includeTickers = includeTickers_example; // String | ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, leave blank to omit tickers data in response

try {
    api_instance.derivativesExchangesIdGet(id, includeTickers);
} catch (e) {
    print('Exception when calling DerivativesApi->derivativesExchangesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the exchange id (can be obtained from derivatives/exchanges/list) eg. bitmex | 
 **includeTickers** | **String**| ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, leave blank to omit tickers data in response | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **derivativesExchangesListGet**
> derivativesExchangesListGet()

List all derivative exchanges name and identifier

List all derivative exchanges name and identifier

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DerivativesApi();

try {
    api_instance.derivativesExchangesListGet();
} catch (e) {
    print('Exception when calling DerivativesApi->derivativesExchangesListGet: $e\n');
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

# **derivativesGet**
> derivativesGet(includeTickers)

List all derivative tickers

List all derivative tickers

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DerivativesApi();
final includeTickers = includeTickers_example; // String | ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, defaults to unexpired

try {
    api_instance.derivativesGet(includeTickers);
} catch (e) {
    print('Exception when calling DerivativesApi->derivativesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTickers** | **String**| ['all', 'unexpired'] - expired to show unexpired tickers, all to list all tickers, defaults to unexpired | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

