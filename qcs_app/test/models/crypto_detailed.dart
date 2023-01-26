
class CryptoDetail {
  List<dynamic>? categories;
  String? description;
  dynamic sentiment_votes_up_percentage;
  dynamic sentiment_votes_down_percentage;
  dynamic market_cap_rank;
  dynamic coingecko_rank;
  dynamic coingecko_score;
  dynamic developer_score;
  dynamic community_score;
  dynamic liquidity_score;
  dynamic public_interest_score;

  CryptoDetail({
    required this.categories,
    required this.description,
    required this.sentiment_votes_up_percentage,
    required this.sentiment_votes_down_percentage,
    required this.public_interest_score,
    required this.coingecko_rank,
    required this.coingecko_score,
    required this.community_score,
    required this.developer_score,
    required this.liquidity_score,
    required this.market_cap_rank,
  });

  factory CryptoDetail.fromJson(dynamic json) {
    return CryptoDetail(
      categories: json['categories'] as List<dynamic>?,
      description: json['description']["en"] as String?,
      sentiment_votes_up_percentage:
          json["sentiment_votes_up_percentage"],
      sentiment_votes_down_percentage: json["sentiment_votes_down_percentage"],
      public_interest_score: json["public_interest_score"],
      coingecko_rank: json["coingecko_rank"],
      coingecko_score: json["coingecko_score"],
      community_score: json["community_score"],
      developer_score: json["developer_score"],
      liquidity_score: json["liquidity_score"],
      market_cap_rank: json["market_cap_rank"],
    );
  }
}
