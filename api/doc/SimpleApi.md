# openapi.api.SimpleApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**simplePriceGet**](SimpleApi.md#simplepriceget) | **GET** /simple/price | Get the current price of any cryptocurrencies in any other supported currencies that you need.
[**simpleSupportedVsCurrenciesGet**](SimpleApi.md#simplesupportedvscurrenciesget) | **GET** /simple/supported_vs_currencies | Get list of supported_vs_currencies.
[**simpleTokenPriceIdGet**](SimpleApi.md#simpletokenpriceidget) | **GET** /simple/token_price/{id} | Get current price of tokens (using contract addresses) for a given platform in any other currency that you need.


# **simplePriceGet**
> simplePriceGet(ids, vsCurrencies, includeMarketCap, include24hrVol, include24hrChange, includeLastUpdatedAt, precision)

Get the current price of any cryptocurrencies in any other supported currencies that you need.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SimpleApi();
final ids = ids_example; // String | id of coins, comma-separated if querying more than 1 coin *refers to <b>`coins/list`</b>
final vsCurrencies = vsCurrencies_example; // String | vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
final includeMarketCap = includeMarketCap_example; // String | <b>true/false</b> to include market_cap, <b>default: false</b>
final include24hrVol = include24hrVol_example; // String | <b>true/false</b> to include 24hr_vol, <b>default: false</b>
final include24hrChange = include24hrChange_example; // String | <b>true/false</b> to include 24hr_change, <b>default: false</b>
final includeLastUpdatedAt = includeLastUpdatedAt_example; // String | <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
final precision = precision_example; // String | <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value

try {
    api_instance.simplePriceGet(ids, vsCurrencies, includeMarketCap, include24hrVol, include24hrChange, includeLastUpdatedAt, precision);
} catch (e) {
    print('Exception when calling SimpleApi->simplePriceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| id of coins, comma-separated if querying more than 1 coin *refers to <b>`coins/list`</b> | 
 **vsCurrencies** | **String**| vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b> | 
 **includeMarketCap** | **String**| <b>true/false</b> to include market_cap, <b>default: false</b> | [optional] 
 **include24hrVol** | **String**| <b>true/false</b> to include 24hr_vol, <b>default: false</b> | [optional] 
 **include24hrChange** | **String**| <b>true/false</b> to include 24hr_change, <b>default: false</b> | [optional] 
 **includeLastUpdatedAt** | **String**| <b>true/false</b> to include last_updated_at of price, <b>default: false</b> | [optional] 
 **precision** | **String**| <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **simpleSupportedVsCurrenciesGet**
> simpleSupportedVsCurrenciesGet()

Get list of supported_vs_currencies.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SimpleApi();

try {
    api_instance.simpleSupportedVsCurrenciesGet();
} catch (e) {
    print('Exception when calling SimpleApi->simpleSupportedVsCurrenciesGet: $e\n');
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

# **simpleTokenPriceIdGet**
> simpleTokenPriceIdGet(id, contractAddresses, vsCurrencies, includeMarketCap, include24hrVol, include24hrChange, includeLastUpdatedAt, precision)

Get current price of tokens (using contract addresses) for a given platform in any other currency that you need.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SimpleApi();
final id = id_example; // String | The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
final contractAddresses = contractAddresses_example; // String | The contract address of tokens, comma separated
final vsCurrencies = vsCurrencies_example; // String | vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b>
final includeMarketCap = includeMarketCap_example; // String | <b>true/false</b> to include market_cap, <b>default: false</b>
final include24hrVol = include24hrVol_example; // String | <b>true/false</b> to include 24hr_vol, <b>default: false</b>
final include24hrChange = include24hrChange_example; // String | <b>true/false</b> to include 24hr_change, <b>default: false</b>
final includeLastUpdatedAt = includeLastUpdatedAt_example; // String | <b>true/false</b> to include last_updated_at of price, <b>default: false</b>
final precision = precision_example; // String | <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value

try {
    api_instance.simpleTokenPriceIdGet(id, contractAddresses, vsCurrencies, includeMarketCap, include24hrVol, include24hrChange, includeLastUpdatedAt, precision);
} catch (e) {
    print('Exception when calling SimpleApi->simpleTokenPriceIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the platform issuing tokens (See asset_platforms endpoint for list of options) | 
 **contractAddresses** | **String**| The contract address of tokens, comma separated | 
 **vsCurrencies** | **String**| vs_currency of coins, comma-separated if querying more than 1 vs_currency *refers to <b>`simple/supported_vs_currencies`</b> | 
 **includeMarketCap** | **String**| <b>true/false</b> to include market_cap, <b>default: false</b> | [optional] 
 **include24hrVol** | **String**| <b>true/false</b> to include 24hr_vol, <b>default: false</b> | [optional] 
 **include24hrChange** | **String**| <b>true/false</b> to include 24hr_change, <b>default: false</b> | [optional] 
 **includeLastUpdatedAt** | **String**| <b>true/false</b> to include last_updated_at of price, <b>default: false</b> | [optional] 
 **precision** | **String**| <b>full</b> or any value between 0 - 18 to specify decimal place for currency price value | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

