class SilverModel {
  final String name;
  final num price;
  final String symbol;
  final String upDatedAt;
  final String upDatedAtReadable;

  SilverModel( {
    required this.price,
    required this.symbol,
    required this.name,
    required this.upDatedAt,
    required this.upDatedAtReadable,
  });

  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      upDatedAt: json['upDatedAt'],
      upDatedAtReadable: json['upDatedAtReadable'],
    );
  }
}