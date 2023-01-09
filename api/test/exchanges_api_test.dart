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


/// tests for ExchangesApi
void main() {
  // final instance = ExchangesApi();

  group('tests for ExchangesApi', () {
    // List all exchanges (Active with trading volumes)
    //
    // List all exchanges
    //
    //Future exchangesGet({ int perPage, String page }) async
    test('test exchangesGet', () async {
      // TODO
    });

    // Get exchange volume in BTC and top 100 tickers only
    //
    // Get exchange volume in BTC and tickers<br><br> **IMPORTANT**:  Ticker object is limited to 100 items, to get more tickers, use `/exchanges/{id}/tickers`  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
    //
    //Future exchangesIdGet(String id) async
    test('test exchangesIdGet', () async {
      // TODO
    });

    // Get exchange tickers (paginated, 100 tickers per page)
    //
    // Get exchange tickers (paginated)<br><br> **IMPORTANT**:  Ticker `is_stale` is true when ticker that has not been updated/unchanged from the exchange for a while.  Ticker `is_anomaly` is true if ticker's price is outliered by our system.  You are responsible for managing how you want to display these information (e.g. footnote, different background, change opacity, hide) 
    //
    //Future exchangesIdTickersGet(String id, { String coinIds, String includeExchangeLogo, int page, String depth, String order }) async
    test('test exchangesIdTickersGet', () async {
      // TODO
    });

    // Get volume_chart data for a given exchange
    //
    // Get volume_chart data for a given exchange
    //
    //Future exchangesIdVolumeChartGet(String id, int days) async
    test('test exchangesIdVolumeChartGet', () async {
      // TODO
    });

    // List all supported markets id and name (no pagination required)
    //
    // Use this to obtain all the markets' id in order to make API calls
    //
    //Future exchangesListGet() async
    test('test exchangesListGet', () async {
      // TODO
    });

  });
}
