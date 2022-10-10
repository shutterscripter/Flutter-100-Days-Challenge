import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:marvel/model/movie_model.dart';
import 'package:marvel/screens/movie_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var apiUrl = "https://mcuapi.herokuapp.com/api/v1/movies";
  List<MarvelMoviesModel> moviesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMarvelMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 20, 31, 1),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                moviesList = List.from(moviesList.reversed);
                setState(() {

                });
              },
              icon: const Icon(Icons.sort_by_alpha,size: 20,))
        ],
        title: const Text("Marvel "),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(21, 20, 31, 1),
      ),
      body: moviesList.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: moviesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 3,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MovieInfo(movies: moviesList[index]))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: moviesList[index].coverUrl.toString(),
                      ),

                    ),
                  );
                },
              ),
            )
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
    );
  }

  /* method for request data */
  void getMarvelMovies() {
    var url = Uri.parse(apiUrl);
    http.get(url).then((respone) {
      if (respone.statusCode == 200) {
        var responseBody = respone.body;
        var decodedData = jsonDecode(responseBody);
        final List marvelData = decodedData['data'];
        for (int i = 0; i < marvelData.length; i++) {
          final mcuObj = MarvelMoviesModel.fromJson(marvelData[i]);
          moviesList.add(mcuObj);
        }

        //reversing order of list
        moviesList = List.from(moviesList.reversed);
        setState(() {});
      } else {}
    }).catchError((e) {
      debugPrint("==========$e===========");
    });
  }
}
