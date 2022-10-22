import 'package:flutter/material.dart';
import 'package:marvel/screens/all_movies.dart';
import 'package:marvel/screens/phase_five_movies.dart';
import 'package:marvel/screens/phase_four_movies.dart';
import 'package:marvel/screens/phase_one_movies.dart';
import 'package:marvel/screens/phase_three_movies.dart';
import 'package:marvel/screens/phase_two_movies.dart';

class MoviesLists extends StatelessWidget {
  const MoviesLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " All Movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: AllMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Marvel Phase one",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PhaseOneMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Marvel Phase two",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PhaseTwoMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Marvel Phase three",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PhaseThreeMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Marvel Phase four",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PhaseFourMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  " Marvel Phase five",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PhaseFiveMovies(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
