# openapi.api.ExchangeRatesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeRatesGet**](ExchangeRatesApi.md#exchangeratesget) | **GET** /exchange_rates | Get BTC-to-Currency exchange rates


# **exchangeRatesGet**
> exchangeRatesGet()

Get BTC-to-Currency exchange rates

Get BTC-to-Currency exchange rates 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ExchangeRatesApi();

try {
    api_instance.exchangeRatesGet();
} catch (e) {
    print('Exception when calling ExchangeRatesApi->exchangeRatesGet: $e\n');
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

