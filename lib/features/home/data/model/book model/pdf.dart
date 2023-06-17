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