import 'package:flutter/material.dart';
import 'package:news_app/components/BlogTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ArticleModel> articleList = [];
  bool _loading = false;


  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Press",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      body: _loading
          ? ListView.builder(
              itemCount: articleList.length,
              itemBuilder: (context, index) {
                if (articleList[index].imageUrl == null ||
                    articleList[index].title == null ||
                    articleList[index].description == null) {
                  // If any of the required fields is null, return an empty container
                  return Container();
                }

                return BlogTile(
                  imageUrl: articleList[index].imageUrl ?? '',
                  title: articleList[index].title ?? "No Title",
                  desc: articleList[index].description ?? "No Description",
                  url: articleList[index].url!,
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  getData() async {
    ApiService client = ApiService();
    await client.getArticle();
    articleList = client.articleList;
    setState(() {
      _loading = true;
    });
  }
}
