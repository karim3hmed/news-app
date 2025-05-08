class NewsModel {
  final String? image;
  final String title;
  final String? descreption;

  NewsModel({
    required this.image,
    required this.title,
    required this.descreption,
  });

  factory NewsModel.fromjson(json) {
    return NewsModel(
      image: json["title"],
      title: json["urlToImage"],
      descreption: json["description"],
    );
  }
}
