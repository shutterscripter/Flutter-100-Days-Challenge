import 'package:flutter/material.dart';
import 'package:travel_app/ui/home_page.dart';
import 'ui/splash_screen.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    ));
