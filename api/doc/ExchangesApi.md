# openapi.api.ExchangesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangesGet**](ExchangesApi.md#exchangesget) | **GET** /exchanges | List all exchanges (Active with trading volumes)
[**exchangesIdGet**](ExchangesApi.md#exchangesidget) | **GET** /exchanges/{id} | Get exchange volume in BTC and top 100 tickers only
[**exchangesIdTickersGet**](ExchangesApi.md#exchangesidtickersget) | **GET** /exchanges/{id}/tickers | Get exchange tickers (paginated, 100 tickers per page)
[**exchangesIdVolumeChartGet**](ExchangesApi.md#exchangesidvolumechartget) | **GET** /exchanges/{id}/volume_chart | Get volume_chart data for a given exchange
[**exchangesListGet**](ExchangesApi.md#exchangeslistget) | **GET** /exchanges/list | List all supported markets id and name (no pagination required)


# **exchangesGet**
> exchangesGet(perPage, page)

List all exchanges (Active with trading volumes)

List all exchanges

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangesApi();
final perPage = 56; // int | Valid values: 1...250 Total results per page Default value:: 100
final page = page_example; // String | page through results

try {
    api_instance.exchangesGet(perPage, page);
} catch (e) {
    print('Exception when calling ExchangesApi->exchangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Valid values: 1...250 Total results per page Default value:: 100 | [optional] 
 **page** | **String**| page through results | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangesIdGet**
> exchangesIdGet(id)

Get exchange volume in BTC and top 100 tickers only

Get exchange volume in BTC and tickers<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/exchanges/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangesApi();
final id = id_example; // String | pass the exchange id (can be obtained from /exchanges/list) eg. binance

try {
    api_instance.exchangesIdGet(id);
} catch (e) {
    print('Exception when calling ExchangesApi->exchangesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the exchange id (can be obtained from /exchanges/list) eg. binance | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangesIdTickersGet**
> exchangesIdTickersGet(id, coinIds, includeExchangeLogo, page, depth, order)

Get exchange tickers (paginated, 100 tickers per page)

Get exchange tickers (paginated)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangesApi();
final id = id_example; // String | pass the exchange id (can be obtained from /exchanges/list) eg. binance
final coinIds = coinIds_example; // String | filter tickers by coin_ids (ref: v3/coins/list)
final includeExchangeLogo = includeExchangeLogo_example; // String | flag to show exchange_logo
final page = 56; // int | Page through results
final depth = depth_example; // String | flag to show 2% orderbook depth i.e., cost_to_move_up_usd and cost_to_move_down_usd
final order = order_example; // String | valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>

try {
    api_instance.exchangesIdTickersGet(id, coinIds, includeExchangeLogo, page, depth, order);
} catch (e) {
    print('Exception when calling ExchangesApi->exchangesIdTickersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the exchange id (can be obtained from /exchanges/list) eg. binance | 
 **coinIds** | **String**| filter tickers by coin_ids (ref: v3/coins/list) | [optional] 
 **includeExchangeLogo** | **String**| flag to show exchange_logo | [optional] 
 **page** | **int**| Page through results | [optional] 
 **depth** | **String**| flag to show 2% orderbook depth i.e., cost_to_move_up_usd and cost_to_move_down_usd | [optional] 
 **order** | **String**| valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b> | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangesIdVolumeChartGet**
> exchangesIdVolumeChartGet(id, days)

Get volume_chart data for a given exchange

Get volume_chart data for a given exchange

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangesApi();
final id = id_example; // String | pass the exchange id (can be obtained from /exchanges/list) eg. binance
final days = 56; // int |  Data up to number of days ago (eg. 1,14,30)

try {
    api_instance.exchangesIdVolumeChartGet(id, days);
} catch (e) {
    print('Exception when calling ExchangesApi->exchangesIdVolumeChartGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the exchange id (can be obtained from /exchanges/list) eg. binance | 
 **days** | **int**|  Data up to number of days ago (eg. 1,14,30) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangesListGet**
> exchangesListGet()

List all supported markets id and name (no pagination required)

Use this to obtain all the markets' id in order to make API calls

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangesApi();

try {
    api_instance.exchangesListGet();
} catch (e) {
    print('Exception when calling ExchangesApi->exchangesListGet: $e\n');
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

