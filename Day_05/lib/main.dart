import 'package:flutter/material.dart';
import 'package:login_screen/ui/sign_in.dart';
import 'package:login_screen/ui/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => const SplashScreen(),
      "/sign_in": (context) => const SignIn(),
    },
  ));
}
