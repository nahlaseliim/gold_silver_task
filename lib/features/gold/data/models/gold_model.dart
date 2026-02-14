class GoldModel {
  final String name;
  final num price;
  final String symbol;
  final String upDatedAt;
  final String upDatedAtReadable;

  GoldModel( {
    required this.price,
    required this.symbol,
    required this.name,
    required this.upDatedAt,
    required this.upDatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      upDatedAt: json['upDatedAt'],
      upDatedAtReadable: json['upDatedAtReadable'],
    );
  }
}