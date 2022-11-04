import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
    theme: ThemeData.dark(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerCenter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 211, 190, 1),
      body: SafeArea(
        child: Column(
          children: [
            // const Image(image: AssetImage("images/panti.jpg")),
            Stack(
              children: [
                const Image(image: AssetImage("images/panti.jpg")),
                Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    shouldLoop: true,
                    colors: const [
                      Color.fromRGBO(138, 158, 138, 1),
                      Color.fromRGBO(185, 185, 159, 1),
                      Color.fromRGBO(66, 101, 107, 1),
                    ],
                    strokeColor: Colors.white,
                    emissionFrequency: 0.02,

                  ),
                )
              ],
            ),
            const Text(
              "Happy\nDiwali",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 60,
                fontFamily: 'LeckerliOne',
              ),
            )
          ],
        ),
      ),
    );
  }
}
