import 'package:alert_dialogue/apple_dialog.dart';
import 'package:alert_dialogue/dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Alert Dialog Demo",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TestDialog(),
          AppleDialog(),
        ],
      ),
    );
  }
}
