import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 251, 253, 1.0),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 260, 0, 0),
                child: Text(
                  "every.",
                  style: TextStyle(
                      color: purple,
                      fontSize: 62.0,
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Your everyday personal assistant.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'CircularStd',
                  color: black_shade,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        primary: purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text(
                      "Get started",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CircularStd',
                          fontSize: 17),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        primary: const Color.fromRGBO(255, 255, 255, 1.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: purple,
                          fontFamily: 'CircularStd',
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/sign_in');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("New around here?",
                      style: TextStyle(
                        fontSize: 16.0
                            ,fontFamily: 'CircularStd',
                        color: Colors.black
                      ),),
                      SizedBox(width: 3),
                      Text("Sign in",
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        color: purple
                          ,fontWeight: FontWeight.bold,
                        fontSize: 16.0
                      ),),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
