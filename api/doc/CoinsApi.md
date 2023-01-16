# openapi.api.CoinsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.coingecko.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**coinsIdGet**](CoinsApi.md#coinsidget) | **GET** /coins/{id} | Get current data (name, price, market, ... including exchange tickers) for a coin
[**coinsIdHistoryGet**](CoinsApi.md#coinsidhistoryget) | **GET** /coins/{id}/history | Get historical data (name, price, market, stats) at a given date for a coin
[**coinsIdMarketChartGet**](CoinsApi.md#coinsidmarketchartget) | **GET** /coins/{id}/market_chart | Get historical market data include price, market cap, and 24h volume (granularity auto)
[**coinsIdMarketChartRangeGet**](CoinsApi.md#coinsidmarketchartrangeget) | **GET** /coins/{id}/market_chart/range | Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)
[**coinsIdOhlcGet**](CoinsApi.md#coinsidohlcget) | **GET** /coins/{id}/ohlc | Get coin's OHLC
[**coinsIdTickersGet**](CoinsApi.md#coinsidtickersget) | **GET** /coins/{id}/tickers | Get coin tickers (paginated to 100 items)
[**coinsListGet**](CoinsApi.md#coinslistget) | **GET** /coins/list | List all supported coins id, name and symbol (no pagination required)
[**coinsMarketsGet**](CoinsApi.md#coinsmarketsget) | **GET** /coins/markets | List all supported coins price, market cap, volume, and market related data


# **coinsIdGet**
> coinsIdGet(id, localization, tickers, marketData, communityData, developerData, sparkline)

Get current data (name, price, market, ... including exchange tickers) for a coin

Get current data (name, price, market, ... including exchange tickers) for a coin.<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/coins/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins) eg. bitcoin
final localization = localization_example; // String | Include all localized languages in response (true/false) <b>[default: true]</b>
final tickers = true; // bool | Include tickers data (true/false) <b>[default: true]</b>
final marketData = true; // bool | Include market_data (true/false) <b>[default: true]</b>
final communityData = true; // bool | Include community_data data (true/false) <b>[default: true]</b>
final developerData = true; // bool | Include developer_data data (true/false) <b>[default: true]</b>
final sparkline = true; // bool | Include sparkline 7 days data (eg. true, false) <b>[default: false]</b>

try {
    api_instance.coinsIdGet(id, localization, tickers, marketData, communityData, developerData, sparkline);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins) eg. bitcoin | 
 **localization** | **String**| Include all localized languages in response (true/false) <b>[default: true]</b> | [optional] 
 **tickers** | **bool**| Include tickers data (true/false) <b>[default: true]</b> | [optional] 
 **marketData** | **bool**| Include market_data (true/false) <b>[default: true]</b> | [optional] 
 **communityData** | **bool**| Include community_data data (true/false) <b>[default: true]</b> | [optional] 
 **developerData** | **bool**| Include developer_data data (true/false) <b>[default: true]</b> | [optional] 
 **sparkline** | **bool**| Include sparkline 7 days data (eg. true, false) <b>[default: false]</b> | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdHistoryGet**
> coinsIdHistoryGet(id, date, localization)

Get historical data (name, price, market, stats) at a given date for a coin

Get historical data (name, price, market, stats) at a given date for a coin 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins) eg. bitcoin
final date = date_example; // String | The date of data snapshot in dd-mm-yyyy eg. 30-12-2017
final localization = localization_example; // String | Set to false to exclude localized languages in response

try {
    api_instance.coinsIdHistoryGet(id, date, localization);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins) eg. bitcoin | 
 **date** | **String**| The date of data snapshot in dd-mm-yyyy eg. 30-12-2017 | 
 **localization** | **String**| Set to false to exclude localized languages in response | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdMarketChartGet**
> coinsIdMarketChartGet(id, vsCurrency, days, interval)

Get historical market data include price, market cap, and 24h volume (granularity auto)

Get historical market data include price, market cap, and 24h volume (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins) eg. bitcoin
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final days = days_example; // String | Data up to number of days ago (eg. 1,14,30,max)
final interval = interval_example; // String | Data interval. Possible value: daily

try {
    api_instance.coinsIdMarketChartGet(id, vsCurrency, days, interval);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdMarketChartGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins) eg. bitcoin | 
 **vsCurrency** | **String**| The target currency of market data (usd, eur, jpy, etc.) | 
 **days** | **String**| Data up to number of days ago (eg. 1,14,30,max) | 
 **interval** | **String**| Data interval. Possible value: daily | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdMarketChartRangeGet**
> coinsIdMarketChartRangeGet(id, vsCurrency, from, to)

Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)

Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins) eg. bitcoin
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final from = from_example; // String | From date in UNIX Timestamp (eg. 1392577232)
final to = to_example; // String | To date in UNIX Timestamp (eg. 1422577232)

try {
    api_instance.coinsIdMarketChartRangeGet(id, vsCurrency, from, to);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdMarketChartRangeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins) eg. bitcoin | 
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

# **coinsIdOhlcGet**
> List<num> coinsIdOhlcGet(id, vsCurrency, days)

Get coin's OHLC

Candle's body:  1 - 2 days: 30 minutes 3 - 30 days: 4 hours 31 days and beyond: 4 days

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins/list) eg. bitcoin
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final days = days_example; // String |  Data up to number of days ago (1/7/14/30/90/180/365/max)

try {
    final result = api_instance.coinsIdOhlcGet(id, vsCurrency, days);
    print(result);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdOhlcGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins/list) eg. bitcoin | 
 **vsCurrency** | **String**| The target currency of market data (usd, eur, jpy, etc.) | 
 **days** | **String**|  Data up to number of days ago (1/7/14/30/90/180/365/max) | 

### Return type

**List<num>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsIdTickersGet**
> coinsIdTickersGet(id, exchangeIds, includeExchangeLogo, page, order, depth)

Get coin tickers (paginated to 100 items)

Get coin tickers (paginated to 100 items)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final id = id_example; // String | pass the coin id (can be obtained from /coins/list) eg. bitcoin
final exchangeIds = exchangeIds_example; // String | filter results by exchange_ids (ref: v3/exchanges/list)
final includeExchangeLogo = includeExchangeLogo_example; // String | flag to show exchange_logo
final page = 56; // int | Page through results
final order = order_example; // String | valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b>
final depth = depth_example; // String | flag to show 2% orderbook depth. valid values: true, false

try {
    api_instance.coinsIdTickersGet(id, exchangeIds, includeExchangeLogo, page, order, depth);
} catch (e) {
    print('Exception when calling CoinsApi->coinsIdTickersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| pass the coin id (can be obtained from /coins/list) eg. bitcoin | 
 **exchangeIds** | **String**| filter results by exchange_ids (ref: v3/exchanges/list) | [optional] 
 **includeExchangeLogo** | **String**| flag to show exchange_logo | [optional] 
 **page** | **int**| Page through results | [optional] 
 **order** | **String**| valid values: <b>trust_score_desc (default), trust_score_asc and volume_desc</b> | [optional] 
 **depth** | **String**| flag to show 2% orderbook depth. valid values: true, false | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsListGet**
> coinsListGet(includePlatform)

List all supported coins id, name and symbol (no pagination required)

Use this to obtain all the coins' id in order to make API calls

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final includePlatform = true; // bool | flag to include platform contract addresses (eg. 0x.... for Ethereum based tokens).   valid values: true, false

try {
    api_instance.coinsListGet(includePlatform);
} catch (e) {
    print('Exception when calling CoinsApi->coinsListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includePlatform** | **bool**| flag to include platform contract addresses (eg. 0x.... for Ethereum based tokens).   valid values: true, false | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **coinsMarketsGet**
> coinsMarketsGet(vsCurrency, ids, category, order, perPage, page, sparkline, priceChangePercentage)

List all supported coins price, market cap, volume, and market related data

Use this to obtain all the coins market data (price, market cap, volume)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CoinsApi();
final vsCurrency = vsCurrency_example; // String | The target currency of market data (usd, eur, jpy, etc.)
final ids = ids_example; // String | The ids of the coin, comma separated crytocurrency symbols (base). refers to `/coins/list`.
final category = category_example; // String | filter by coin category. Refer to /coin/categories/list
final order = order_example; // String | valid values: <b>market_cap_desc, gecko_desc, gecko_asc, market_cap_asc, market_cap_desc, volume_asc, volume_desc, id_asc, id_desc</b> sort results by field.
final perPage = 56; // int | valid values: 1..250  Total results per page
final page = 56; // int | Page through results
final sparkline = true; // bool | Include sparkline 7 days data (eg. true, false)
final priceChangePercentage = priceChangePercentage_example; // String | Include price change percentage in <b>1h, 24h, 7d, 14d, 30d, 200d, 1y</b> (eg. '`1h,24h,7d`' comma-separated, invalid values will be discarded)

try {
    api_instance.coinsMarketsGet(vsCurrency, ids, category, order, perPage, page, sparkline, priceChangePercentage);
} catch (e) {
    print('Exception when calling CoinsApi->coinsMarketsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vsCurrency** | **String**| The target currency of market data (usd, eur, jpy, etc.) | 
 **ids** | **String**| The ids of the coin, comma separated crytocurrency symbols (base). refers to `/coins/list`. | [optional] 
 **category** | **String**| filter by coin category. Refer to /coin/categories/list | [optional] 
 **order** | **String**| valid values: <b>market_cap_desc, gecko_desc, gecko_asc, market_cap_asc, market_cap_desc, volume_asc, volume_desc, id_asc, id_desc</b> sort results by field. | [optional] [default to 'market_cap_desc']
 **perPage** | **int**| valid values: 1..250  Total results per page | [optional] [default to 100]
 **page** | **int**| Page through results | [optional] [default to 1]
 **sparkline** | **bool**| Include sparkline 7 days data (eg. true, false) | [optional] [default to false]
 **priceChangePercentage** | **String**| Include price change percentage in <b>1h, 24h, 7d, 14d, 30d, 200d, 1y</b> (eg. '`1h,24h,7d`' comma-separated, invalid values will be discarded) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

