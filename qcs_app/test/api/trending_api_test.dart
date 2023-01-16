//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:http/http.dart';
import 'package:openapi/api.dart';
import 'package:flutter_test/flutter_test.dart';

import '../models/crypto_model.dart';
import '../provider/trending_coins_provider.dart';
import '../repository/trending_coins_repository.dart';

/// tests for TrendingApi
void main() {
  // final instance = TrendingApi();

  group('tests for TrendingApi', () {
    test('Get fullJson Trending without logic', () async {
      Future<Response?> getTrending() async {
        final instance = TrendingApi(ApiClient());
        final result = await instance.searchTrendingGetWithHttpInfo();
        return result;
      }

      final json = await getTrending();
      expect(() => getTrending(), returnsNormally);
      expect(json!.body.isNotEmpty, true);
    });

    test('Get trending coins', () async {
      Future<String> getJson() async {
        final jsonString = await TrendingProvider().getTrending();
        return jsonString!.body;
      }

      final jsonData = await getJson();
      final Map<String, dynamic>? data =
          jsonDecode(jsonData) as Map<String, dynamic>?;

      data!.remove("exchanges");

      final dynamic newItemList =
          data['coins'].map((dynamic e) => e["item"]).toList();

      print(newItemList.runtimeType);

      for (var i = 0; i < 7; i++) {
        print("-----------------------------------------------------");
        print(newItemList[i]);
        // expect(newItemList[i], true);
      }
    });

    test('All logic test: model, provider, repo', () async {
      final result = await TrendingRepository.getTrendingRepo();
      expect(result!.isNotEmpty, true);
      expect(result.length, 7);

      for (var i = 0; i < result.length; i++) {
        expect(result[i].name.isNotEmpty, true);
        expect(result[i].symbol.isNotEmpty, true);
        expect(result[i].thumb.isNotEmpty, true);
      }
      
    });
  });
}
