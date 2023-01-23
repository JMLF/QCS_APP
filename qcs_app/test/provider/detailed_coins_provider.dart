import 'package:http/http.dart';
import 'package:openapi/api.dart';

class DetailProvider {
  final instance = CoinsApi();

   Future<Response?> getDetail(String id) async {
        final result = await instance.coinsIdGetWithHttpInfo(id);
        return result;
      }

}