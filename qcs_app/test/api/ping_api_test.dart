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

/// tests for PingApi
void main() {
  // final instance = PingApi();

  group('tests for PingApi', () {
    // Check API server status
    //
    // Check API server status
    //
    //Future pingGet() async

    test('test pingGet', () async {
      final instance = PingApi(ApiClient());
      expect(() => instance.pingGet(), returnsNormally);
    });
    test('test pingGetInfo', () async {
      Future<String?> ping() async {
        final instance = PingApi(ApiClient());

        final result = await instance.pingGetWithHttpInfo();
        print(result.body.toString());
        return result.body;
      }

      String tRes = '{"gecko_says":"(V3) To the Moon!"}';
      expect(() => ping(), returnsNormally);
      expect(await ping(), tRes);
    });
  });
}
