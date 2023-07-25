import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            /** App bar */
            SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                floating: true,
                expandedHeight: 130.0,
                title: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "T o d a y",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        print("Icon pressed");
                      },
                    ),
                  ),

                ]),

            /** home content */
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    color: Colors.white,
                    child: Center(
                      child: Text('Entry $index'),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
