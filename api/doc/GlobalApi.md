# openapi.api.GlobalApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**globalGet**](GlobalApi.md#globalget) | **GET** /global | Get cryptocurrency global data


# **globalGet**
> globalGet()

Get cryptocurrency global data

Get cryptocurrency global data 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = GlobalApi();

try {
    api_instance.globalGet();
} catch (e) {
    print('Exception when calling GlobalApi->globalGet: $e\n');
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

