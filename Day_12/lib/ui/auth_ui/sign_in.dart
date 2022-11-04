import 'package:firebase_auth_ex/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () async {
            dynamic result = await _authService.signInAnon();
            if (result == null) {
              print("Error");
            } else {
              print("SIGNED IN");
              print(result.uid);
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.login),
              SizedBox(width: 10),
              Text("Sign in anonymously"),
            ],
          ),
        ),
      ),
    );
  }
}
