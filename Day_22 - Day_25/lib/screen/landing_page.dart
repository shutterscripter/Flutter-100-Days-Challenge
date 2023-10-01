import 'package:flutter/material.dart';
import 'package:news_app/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              //add logo.png image
              Image.asset(
                "assets/logo.png",
                height: 70,
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/landing.jpg',
                height: 300,
                width: 300,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () async {
                  // Set the flag to indicate that the landing page has been shown
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setBool('firstLaunch', false);

                  // Navigate to the main screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
