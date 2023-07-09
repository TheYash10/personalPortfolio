class Certificate {
  String imageUrl;
  String text;
  String downloadUrl;

  Certificate(
      {required this.imageUrl, required this.text, required this.downloadUrl});
}

List<Certificate> demo_Certificate = [
  Certificate(
    imageUrl: "assets/certificate/completionDSA.jpg",
    text: "Completion of DSA",
    downloadUrl:
        "https://github.com/TheYash10/portfolio/blob/master/Certification%20of%20completion%20DSA.pdf",
  ),
  Certificate(
    imageUrl: "assets/certificate/ExcellenceDSA.png",
    text: "Excellence in DSA",
    downloadUrl:
        "https://github.com/TheYash10/portfolio/blob/master/Certification%20of%20Excellence%20DSA.pdf",
  ),
  Certificate(
    imageUrl: "assets/certificate/flutterdevelopment.png",
    text: "Completion of Flutter Development",
    downloadUrl:
        "https://github.com/TheYash10/portfolio/blob/master/flutterDevelopment.pdf",
  ),
  Certificate(
    imageUrl: "assets/certificate/typing.png",
    text: "Certificate of typing",
    downloadUrl:
        "https://github.com/TheYash10/portfolio/blob/master/typing.pdf",
  ),
  Certificate(
    imageUrl: "assets/certificate/Data Analytics Certificate.png",
    text: "Certificate of Data Science",
    downloadUrl:
        "https://github.com/TheYash10/portfolio/blob/master/Data%20Science%20Certificate.pdf",
  ),
];
