import 'package:bookly_app/features/home/data/model/book%20model/price.dart';
import 'offer.dart';

class SaleInfo {
  String country;
  String saleability;
  bool isEbook;
  List<Offer> offers;
  Price listPrice;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.offers,
    required this.listPrice,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      offers: List<Offer>.from(json['offers'].map((i) => Offer.fromJson(i))),
      listPrice: Price.fromJson(json['listPrice']),
    );
  }
}