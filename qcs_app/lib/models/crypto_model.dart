class Crypto {
  String name;
  String id;
  String symbol;
  String thumb;
  double price;

  Crypto(
      {required this.name,
      required this.id,
      required this.symbol,
      required this.thumb,
      required this.price});

  factory Crypto.fromJson(dynamic json) {
    return Crypto(
      id: json['id'] as String,
        name: json['name'] as String,
        symbol: json['symbol'] as String,
        thumb: json['large'] as String,
        price: json['price_btc'] as double);
  }

  @override
  String toString() {
    return '{ $name, at $price btc }';
  }
}
