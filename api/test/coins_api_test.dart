//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for CoinsApi
void main() {
  // final instance = CoinsApi();

  group('tests for CoinsApi', () {
    // Get current data (name, price, market, ... including exchange tickers) for a coin
    //
    // Get current data (name, price, market, ... including exchange tickers) for a coin.<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/coins/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
    //
    //Future coinsIdGet(String id, { String localization, bool tickers, bool marketData, bool communityData, bool developerData, bool sparkline }) async
    test('test coinsIdGet', () async {
      // TODO
    });

    // Get historical data (name, price, market, stats) at a given date for a coin
    //
    // Get historical data (name, price, market, stats) at a given date for a coin 
    //
    //Future coinsIdHistoryGet(String id, String date, { String localization }) async
    test('test coinsIdHistoryGet', () async {
      // TODO
    });

    // Get historical market data include price, market cap, and 24h volume (granularity auto)
    //
    // Get historical market data include price, market cap, and 24h volume (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
    //
    //Future coinsIdMarketChartGet(String id, String vsCurrency, String days, { String interval }) async
    test('test coinsIdMarketChartGet', () async {
      // TODO
    });

    // Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)
    //
    // Get historical market data include price, market cap, and 24h volume within a range of timestamp (granularity auto)  <b><ul><li>Data granularity is automatic (cannot be adjusted)</li><li>1 day from current time = 5 minute interval data</li><li>1 - 90 days from current time = hourly data</li><li>above 90 days from current time = daily data (00:00 UTC)</li></ul> </b>
    //
    //Future coinsIdMarketChartRangeGet(String id, String vsCurrency, String from, String to) async
    test('test coinsIdMarketChartRangeGet', () async {
      // TODO
    });

    // Get coin's OHLC
    //
    // Candle's body:  1 - 2 days: 30 minutes 3 - 30 days: 4 hours 31 days and beyond: 4 days
    //
    //Future<List<num>> coinsIdOhlcGet(String id, String vsCurrency, String days) async
    test('test coinsIdOhlcGet', () async {
      // TODO
    });

    // Get coin tickers (paginated to 100 items)
    //
    // Get coin tickers (paginated to 100 items)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
    //
    //Future coinsIdTickersGet(String id, { String exchangeIds, String includeExchangeLogo, int page, String order, String depth }) async
    test('test coinsIdTickersGet', () async {
      // TODO
    });

    // List all supported coins id, name and symbol (no pagination required)
    //
    // Use this to obtain all the coins' id in order to make API calls
    //
    //Future coinsListGet({ bool includePlatform }) async
    test('test coinsListGet', () async {
      // TODO
    });

    // List all supported coins price, market cap, volume, and market related data
    //
    // Use this to obtain all the coins market data (price, market cap, volume)
    //
    //Future coinsMarketsGet(String vsCurrency, { String ids, String category, String order, int perPage, int page, bool sparkline, String priceChangePercentage }) async
    test('test coinsMarketsGet', () async {
      // TODO
    });

  });
}
