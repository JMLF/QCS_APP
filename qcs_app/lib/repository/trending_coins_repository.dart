import 'dart:convert';
import 'package:qcs_app/provider/trending_coins_provider.dart';
import '../models/crypto_model.dart';

class TrendingRepository {
  static Future<List<Crypto>?> getTrendingRepo() async {
    List<Crypto> trendingCoins = <Crypto>[] ;
    final jsonData = await getJson();

    final Map<String, dynamic>? data =
        jsonDecode(jsonData) as Map<String, dynamic>?;

    final dynamic newItemList =
        data!['coins'].map((dynamic e) => e["item"]).toList();

    for (var i = 0; i < 7; i++) {
      trendingCoins.add(Crypto.fromJson(newItemList[i]));
    }

    return trendingCoins;
  }
}

Future<String> getJson() async {
  final jsonString = await TrendingProvider().getTrending();
  return jsonString!.body;
}
