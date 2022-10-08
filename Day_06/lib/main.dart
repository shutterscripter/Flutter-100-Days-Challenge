import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Text Widget Examples",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.grey),
                ),
                const SizedBox(height: 100),
                const Text(
                  "Simple Text Widget.",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 20),

                //  Rich text Example:
                RichText(
                    text: const TextSpan(
                        text: "This is",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        children: [
                      TextSpan(
                          text: " TextSpan",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900)),
                      TextSpan(
                        text: " Widget.",
                      ),
                    ])),
                const SizedBox(height: 30),
                Column(
                  children: [
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: isSelected
                          ? const TextStyle(
                              fontSize: 40.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)
                          : const TextStyle(
                              fontSize: 20.0, color: Colors.black),
                      child: const Text(
                        "Animate me!",
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: const Text("Animate text"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
