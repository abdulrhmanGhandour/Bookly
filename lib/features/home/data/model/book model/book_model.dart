import 'package:bookly_app/features/home/data/model/book%20model/sale_info.dart';
import 'package:bookly_app/features/home/data/model/book%20model/search_info.dart';
import 'package:bookly_app/features/home/data/model/book%20model/volume_info.dart';
import 'access_info.dart';

class BookModel {
  String kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
      saleInfo: SaleInfo.fromJson(json['saleInfo']),
      accessInfo: AccessInfo.fromJson(json['accessInfo']),
      searchInfo: SearchInfo.fromJson(json['searchInfo']),
    );
  }
}

























