# openapi.api.ContractApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**coinsIdContractContractAddressGet**](ContractApi.md#coinsidcontractcontractaddressget) | **GET** /coins/{id}/contract/{contract_address} | Get coin info from contract address
[**coinsIdContractContractAddressMarketChartGet**](ContractApi.md#coinsidcontractcontractaddressmarketchartget) | **GET** /coins/{id}/contract/{contract_address}/market_chart/ | Get historical market data include price, market cap, and 24h volume (granularity auto) from a contract address 
[**coinsIdContractContractAddressMarketChartRangeGet**](ContractApi.md#coinsidcontractcontractaddressmarketchartrangeget) | **GET** /coins/{id}/contract/{contract_address}/market_chart/range | Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) from a contract address


# **coinsIdContractContractAddressGet**
> coinsIdContractContractAddressGet(id, contractAddress)

Get coin info from contract address

Get coin info from contract address

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContractApi();
final id = id_example; // String | Asset platform (See asset_platforms endpoint for list of options)
final contractAddress = contractAddress_example; // String | Token's contract address

try {
    api_instance.coinsIdContractContractAddressGet(id, contractAddress);
} catch (e) {
    print('Exception when calling ContractApi->coinsIdContractContractAddressGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Asset platform (See asset_platforms endpoint for list of options) | 
 **contractAddress** | **String**| Token's contract address | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdContractContractAddressMarketChartGet**
> coinsIdContractContractAddressMarketChartGet(id, contractAddress, vsCurrency, days)

Get historical market data include price, market cap, and 24h volume (granularity auto) from a contract address 

Get historical market data include price, market cap, and 24h volume (granularity auto) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContractApi();
final id = id_example; // String | The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
final contractAddress = contractAddress_example; // String | Token's contract address
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final days = days_example; // String | Data up to number of days ago (eg. 1,14,30,max)

try {
    api_instance.coinsIdContractContractAddressMarketChartGet(id, contractAddress, vsCurrency, days);
} catch (e) {
    print('Exception when calling ContractApi->coinsIdContractContractAddressMarketChartGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the platform issuing tokens (See asset_platforms endpoint for list of options) | 
 **contractAddress** | **String**| Token's contract address | 
 **vsCurrency** | **String**| The target currency of market data (usd, eur, jpy, etc.) | 
 **days** | **String**| Data up to number of days ago (eg. 1,14,30,max) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdContractContractAddressMarketChartRangeGet**
> coinsIdContractContractAddressMarketChartRangeGet(id, contractAddress, vsCurrency, from, to)

Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) from a contract address

Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ContractApi();
final id = id_example; // String | The id of the platform issuing tokens (See asset_platforms endpoint for list of options)
final contractAddress = contractAddress_example; // String | Token's contract address
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final from = from_example; // String | From date in UNIX Timestamp (eg. 1392577232)
final to = to_example; // String | To date in UNIX Timestamp (eg. 1422577232)

try {
    api_instance.coinsIdContractContractAddressMarketChartRangeGet(id, contractAddress, vsCurrency, from, to);
} catch (e) {
    print('Exception when calling ContractApi->coinsIdContractContractAddressMarketChartRangeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the platform issuing tokens (See asset_platforms endpoint for list of options) | 
 **contractAddress** | **String**| Token's contract address | 
 **vsCurrency** | **String**| The target currency of market data (usd, eur, jpy, etc.) | 
 **from** | **String**| From date in UNIX Timestamp (eg. 1392577232) | 
 **to** | **String**| To date in UNIX Timestamp (eg. 1422577232) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

