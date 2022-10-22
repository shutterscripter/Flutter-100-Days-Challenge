import 'package:marvel/model/movie_model.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:marvel/network_call.dart';
import 'package:marvel/screens/movies_details.dart';

class PhaseTwoMovies extends StatefulWidget {
  const PhaseTwoMovies({Key? key}) : super(key: key);

  @override
  State<PhaseTwoMovies> createState() => _PhaseTwoMoviesState();
}

class _PhaseTwoMoviesState extends State<PhaseTwoMovies> {
  List<MarvelMoviesModel> moviesListP2 = [];
  var apiUrl = "https://mcuapi.herokuapp.com/api/v1/movies";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMarvelMovies();
    getPhaseMovies();
  }

  @override
  Widget build(BuildContext context) {
    return moviesListP2.isNotEmpty
        ? GridView.builder(
            itemCount: moviesListP2.length,
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
                            MoviesDetails(movies: moviesListP2[index]))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: moviesListP2[index].coverUrl.toString(),
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

          if (mcuObj.phase.toString() == "2") {
            moviesListP2.add(mcuObj);
          }
        }
        //reversing order of list
        setState(() {});
      } else {}
    }).catchError((e) {
      debugPrint("==========$e===========");
    });
  }
}
