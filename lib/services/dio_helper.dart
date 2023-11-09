import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class DioHelper {
  const DioHelper({required this.dio});
  final Dio dio;

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=9fe8f413700043eeb880340fda793688&category=$category",
      );
      List<ArticleModel> articles = [];
      List<dynamic> articlesData = response.data["articles"];
      for (var article in articlesData) {
        ArticleModel model = ArticleModel.fromJson(article);
        articles.add(model);
      }
      return articles;
    } catch (error) {
      return [];
    }
  }
}
