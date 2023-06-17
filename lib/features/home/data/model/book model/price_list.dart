class PriceListPrice {
  double amount;
  String currencyCode;

  PriceListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory PriceListPrice.fromJson(Map<String, dynamic> json) {
    return PriceListPrice(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}
