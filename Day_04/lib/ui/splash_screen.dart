import 'dart:async';
import 'package:travel_app/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/ui/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            right: animate ? 30 : -30,
            top: 30,
            child: const Image(image: AssetImage(airplane)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 40 : -40,
            child: const Image(image: AssetImage(cloud)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: animate ? -80 : -150,
            child: const Image(image: AssetImage(building)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: animate ? 0 : -50,
            child: const Image(image: AssetImage(grass)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: animate ? 0 : -40,
            child: const Image(image: AssetImage(girl)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 110 : 80,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text("Get Ready For",
                    style: TextStyle(
                        fontSize: 24.0,
                        letterSpacing: 2.0,
                        color: Color.fromRGBO(84, 84, 84, 1),
                        fontWeight: FontWeight.normal)),
                Text("New Adventures",
                    style: TextStyle(
                        fontSize: 24.0,
                        letterSpacing: 2.0,
                        color: Color.fromRGBO(84, 84, 84, 1),
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Pack your things and make more memories outdoor",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color.fromRGBO(84, 84, 84, 1),
                        fontWeight: FontWeight.normal)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 4000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
