import 'package:http/http.dart';
import 'package:openapi/api.dart';

class TrendingProvider {
  final instance = TrendingApi(ApiClient());

   Future<Response?> getTrending() async {
        final result = await instance.searchTrendingGetWithHttpInfo();
        return result;
      }

}