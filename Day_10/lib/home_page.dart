import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // ignore: prefer_const_constructors
          SliverAppBar(
            elevation: 0,
            title: const Text("Sliver App Bar"),
            backgroundColor: Colors.deepPurple,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.deepPurple[300],
                  height: 400,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.deepPurple[300],
                  height: 400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
