import 'package:flutter/material.dart';
import 'package:marvel/screens/all_movies.dart';
import 'package:marvel/screens/list_view.dart';
import 'package:marvel/screens/phase_five_movies.dart';
import 'package:marvel/screens/phase_four_movies.dart';
import 'package:marvel/screens/phase_one_movies.dart';
import 'package:marvel/screens/phase_three_movies.dart';
import 'package:marvel/screens/phase_two_movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(21, 20, 31, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(21, 20, 31, 1),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "Find Movies",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(33, 31, 48, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  labelText: "Search Movie",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: MoviesLists() ,
            )
          ],
        ),
      ),
    );
  }
}
