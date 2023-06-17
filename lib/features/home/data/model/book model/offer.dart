import 'package:bookly_app/features/home/data/model/book%20model/price_list.dart';

class Offer {
  int finskyOfferType;
  PriceListPrice retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      finskyOfferType: json['finskyOfferType'],
      retailPrice: PriceListPrice.fromJson(json['retailPrice']),
    );
  }
}