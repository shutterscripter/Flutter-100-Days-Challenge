import 'package:news_app/model/article_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  List<ArticleModel> articleList = [];
  final String urlExplore =
      "https://newsapi.org/v2/everything?q=india&from=2023-09-01&sortBy=publishedAt&language=en&apiKey=465d0a5e15194833bee830c9366ebe72";

  Future<void> getArticle() async {
    var res = await http.get(Uri.parse(urlExplore));
    var jsonData = jsonDecode(res.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['url'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            imageUrl: element['urlToImage'],
            publishedAt: element['publishedAt'],
            content: element['content'],
          );
          articleList.add(articleModel);
        }
      });
    }
  }
}
