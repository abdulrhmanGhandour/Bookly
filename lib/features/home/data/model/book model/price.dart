class Price {
  double amount;
  String currencyCode;

  Price({
    required this.amount,
    required this.currencyCode,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}
