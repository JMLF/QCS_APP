import 'dart:convert';
import '../models/crypto_detailed.dart';
import '../provider/detailed_coins_provider.dart';

class DetailRepository {
  static Future<CryptoDetail?> getDetailRepo(String id) async {
    final jsonData = await getJson(id);

    final Map<String, dynamic>? data =
        jsonDecode(jsonData) as Map<String, dynamic>?;

    // final dynamic newItemList =
    //   data!['coins'].map((dynamic e) => e["item"]).toList();
  //  print(data);
    CryptoDetail detail = CryptoDetail.fromJson(data);

    return detail;
  }
}

Future<String> getJson(String id) async {
  final jsonString = await DetailProvider().getDetail(id);
  return jsonString!.body;
}
