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

class VolumeInfo {
  String title;
  String subtitle;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  int pageCount;
  String printType;
  List<String> categories;
  String maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      subtitle: json['subtitle'],
      authors: List<String>.from(json['authors']),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: List<IndustryIdentifier>.from(json['industryIdentifiers'].map((i) => IndustryIdentifier.fromJson(i))),
      readingModes: ReadingModes.fromJson(json['readingModes']),
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: List<String>.from(json['categories']),
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: PanelizationSummary.fromJson(json['panelizationSummary']),
      imageLinks: ImageLinks.fromJson(json['imageLinks']),
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }
}

class IndustryIdentifier {
  String type;
  String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}

class ReadingModes {
  bool text;
  bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }
}

class PanelizationSummary {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }
}

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

class AccessInfo {
  String country;
  String viewability;
  bool embeddable;
  bool publicDomain;
  String textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  String accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: Epub.fromJson(json['epub']),
      pdf: Pdf.fromJson(json['pdf']),
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }
}

class Epub {
  bool isAvailable;
  String acsTokenLink;

  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }
}

class Pdf {
  bool isAvailable;
  String acsTokenLink;

  Pdf({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }
}

class SearchInfo {
  String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      textSnippet: json['textSnippet'],
    );
  }
}