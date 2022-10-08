import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';
import 'package:login_screen/ui/button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 36,
                      color: black_shade,
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Button(
                text: "Sign in with Apple",
                color: Colors.white,
                icon: Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 30,
                ),
                textColor: Colors.black,
              ),
              const Button(
                text: "Sign in with Google",
                color: Colors.white,
                icon: Icon(
                  Icons.g_mobiledata,
                  color: Colors.black,
                  size: 30,
                ),
                textColor: Color.fromRGBO(66, 133, 244, 1.0),
              ),
              const SizedBox(height: 50),
              const Text(
                "or get a link emailed to you",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(25, 17, 0, 17),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: 'Work email address',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CircularStd',
                          fontSize: 17)),
                ),
              ),
              const SizedBox(height: 0),
              const Button(
                  text: "Email me a signup link",
                  color: purple,
                  icon: Icon(Icons.email),
                  textColor: Colors.white),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  "You are completely safe.",
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              const Text(
                "Read our Terms & Conditions.",
                style: TextStyle(
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold,
                    color: purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
