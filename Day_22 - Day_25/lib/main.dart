import 'package:flutter/material.dart';
import 'package:news_app/screen/home.dart';
import 'package:news_app/screen/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstLaunch = prefs.getBool('firstLaunch') ?? true;

  runApp(
    MaterialApp(
      home: MyApp(isFirstLaunch: isFirstLaunch),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isFirstLaunch;

  const MyApp({super.key, required this.isFirstLaunch});

  @override
  Widget build(BuildContext context) {
    return isFirstLaunch ? const LandingPage() : const Home();
  }
}
