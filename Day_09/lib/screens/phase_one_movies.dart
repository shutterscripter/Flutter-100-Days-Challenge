import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:marvel/model/movie_model.dart';
import 'package:marvel/screens/movies_details.dart';

class PhaseOneMovies extends StatefulWidget {
  const PhaseOneMovies({Key? key}) : super(key: key);

  @override
  State<PhaseOneMovies> createState() => _PhaseOneMoviesState();
}

class _PhaseOneMoviesState extends State<PhaseOneMovies> {
  var apiUrl = "https://mcuapi.herokuapp.com/api/v1/movies";
  List<MarvelMoviesModel> moviesListP1 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhaseMovies();
  }

  @override
  Widget build(BuildContext context) {
    return moviesListP1.isNotEmpty
        ? GridView.builder(
            itemCount: moviesListP1.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.4,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MoviesDetails(movies: moviesListP1[index]))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: moviesListP1[index].coverUrl.toString(),
                  ),
                ),
              );
            },
          )
        : const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
  }

  /* method for request data */
  void getPhaseMovies() {
    var url = Uri.parse(apiUrl);
    http.get(url).then((respone) {
      if (respone.statusCode == 200) {
        var now = DateTime.now();
        var formatter = DateFormat('yyyy-MM-dd');
        String today = formatter.format(now);

        var responseBody = respone.body;
        var decodedData = jsonDecode(responseBody);
        final List marvelData = decodedData['data'];
        for (int i = 0; i < marvelData.length; i++) {
          final mcuObj = MarvelMoviesModel.fromJson(marvelData[i]);
          print(mcuObj.phase.toString());
          if (mcuObj.phase.toString() == "1") {
            moviesListP1.add(mcuObj);
          }
        }

        //reversing order of list
        print(moviesListP1);

        setState(() {});
      } else {}
    }).catchError((e) {
      debugPrint("==========$e===========");
    });
  }
}
