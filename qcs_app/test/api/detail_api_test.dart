
import 'package:flutter_test/flutter_test.dart';
import '../repository/detailed_coins_repository.dart';

void main() {
  group('tests for DetailApi', () {
    test('All logic test: model, provider, repo', () async {
      final result = await DetailRepository.getDetailRepo("lossless");

      print(result!.categories);
      print("------------------------------");
      print(result.coingecko_rank);
      print("------------------------------");
      print(result.coingecko_score);
      print("------------------------------");
      print(result.community_score);
      print("------------------------------");
      print(result.description);
      print("------------------------------");
      print(result.developer_score);
      print("------------------------------");
      print(result.liquidity_score);
      print("------------------------------");
      print(result.market_cap_rank);
      print("------------------------------");
      print(result.public_interest_score);
      print("------------------------------");
      print(result.sentiment_votes_down_percentage);
      print("------------------------------");
      print(result.sentiment_votes_up_percentage);

    });
  });
}
