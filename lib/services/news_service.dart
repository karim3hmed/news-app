import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<NewsModel>> getnews({required String category}) async {
    try {
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=655c13457011498baeec603d3ea7e04b&category=$category",
      );
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<NewsModel> Articleslist = [];

      for (var article in articles) {
        NewsModel articleModel = NewsModel(
          image: article['urlToImage'],
          title: article['title'],
          descreption: article['description'],
        );
        Articleslist.add(articleModel);
      }
      return Articleslist;
    } on Exception {
      return [];
    }
  }
}
