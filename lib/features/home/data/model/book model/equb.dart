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