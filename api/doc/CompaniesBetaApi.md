# openapi.api.CompaniesBetaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**companiesPublicTreasuryCoinIdGet**](CompaniesBetaApi.md#companiespublictreasurycoinidget) | **GET** /companies/public_treasury/{coin_id} | Get public companies data


# **companiesPublicTreasuryCoinIdGet**
> companiesPublicTreasuryCoinIdGet(coinId)

Get public companies data

Get public companies bitcoin or ethereum holdings (Ordered by total holdings descending)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CompaniesBetaApi();
final coinId = coinId_example; // String | bitcoin or ethereum

try {
    api_instance.companiesPublicTreasuryCoinIdGet(coinId);
} catch (e) {
    print('Exception when calling CompaniesBetaApi->companiesPublicTreasuryCoinIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coinId** | **String**| bitcoin or ethereum | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

