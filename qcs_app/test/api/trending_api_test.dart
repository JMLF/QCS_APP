//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:http/http.dart';
import 'package:openapi/api.dart';
import 'package:flutter_test/flutter_test.dart';

/// tests for TrendingApi
void main() {
  // final instance = TrendingApi();

  group('tests for TrendingApi', () {
    test('test searchTrendingGet', () async {
      Future<String?> GetTrending() async {
        final instance = TrendingApi(ApiClient());

        final result = await instance.searchTrendingGetWithHttpInfo();
        print(result.body.toString());
        return result.body;
      }

      print(await GetTrending());
      //String tRes = '{"gecko_says":"(V3) To the Moon!"}';
      //expect(() => ping(), returnsNormally);
      //expect(await ping(), tRes);
    });
  });
}
