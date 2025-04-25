class Youmodel {
  final String title;
  final String url;
  final String vedioid;

  Youmodel({required this.title, required this.url, required this.vedioid});

  factory Youmodel.fromJson(Map<String, dynamic> json) {
    return Youmodel(
      title: json['snippet']['title'],
      url: json['snippet']['thumbnails']['high']['url'],
      vedioid: json['id']['videoId'],
    );
  }
}
