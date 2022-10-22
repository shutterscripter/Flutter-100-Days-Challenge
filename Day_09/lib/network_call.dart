import 'package:marvel/model/movie_model.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

var apiUrl = "https://mcuapi.herokuapp.com/api/v1/movies";
List<MarvelMoviesModel> moviesList = [];
List<MarvelMoviesModel> moviesListP1 = [];
List<MarvelMoviesModel> moviesListP2 = [];
List<MarvelMoviesModel> moviesListP3 = [];
List<MarvelMoviesModel> moviesListP4 = [];
List<MarvelMoviesModel> moviesListP5 = [];
List<MarvelMoviesModel> upcomingMovies = [];

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
    } else {}
  }).catchError((e) {
    debugPrint("==========$e===========");
  });
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
        if (mcuObj.phase.toString() == "2") {
          moviesListP2.add(mcuObj);
        }
        if (mcuObj.phase.toString() == "3") {
          moviesListP3.add(mcuObj);
        }
        if (mcuObj.phase.toString() == "4") {
          moviesListP4.add(mcuObj);
        }
        if (mcuObj.phase.toString() == "5") {
          moviesListP5.add(mcuObj);
        }
        if (mcuObj.releaseDate.toString() == today) {
          upcomingMovies.add(mcuObj);
        }
      }
    } else {}
  }).catchError((e) {
    debugPrint("==========$e===========");
  });
}
