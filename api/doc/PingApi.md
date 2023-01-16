# openapi.api.PingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingGet**](PingApi.md#pingget) | **GET** /ping | Check API server status


# **pingGet**
> pingGet()

Check API server status

Check API server status 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = PingApi();

try {
    api_instance.pingGet();
} catch (e) {
    print('Exception when calling PingApi->pingGet: $e\n');
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

