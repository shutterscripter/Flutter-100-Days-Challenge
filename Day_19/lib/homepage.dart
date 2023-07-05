import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Scratcher scratcher ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Scratcher Demo"),
      ),
      body: Center(
        child: Scratcher(
          brushSize: 50,
          threshold: 30,
          color: Colors.grey.shade700,
          accuracy: ScratchAccuracy.low,
          onChange: (value) => print("Scratch progress: $value%"),
          onThreshold: () => {},
          child: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/gold_trophy.jpg',
                  scale: 3.5,
                ),
                const Text(
                  "Better Luck \nNext Time!\n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
