import 'package:qcs_app/models/crypto_detailed.dart';
import 'package:qcs_app/models/crypto_model.dart';



class ScreenDetailArgument {
  ScreenDetailArgument({required this.crypto});
  CryptoDetail crypto = CryptoDetail(description: "description", sentiment_votes_up_percentage: "sentiment_votes_up_percentage", sentiment_votes_down_percentage: "sentiment_votes_down_percentage", public_interest_score: "public_interest_score", coingecko_rank: "coingecko_rank", coingecko_score: "coingecko_score", community_score: "community_score", developer_score: "developer_score", liquidity_score: "liquidity_score", market_cap_rank: "market_cap_rank", name: 'name', thumb: 'thumb');
}
