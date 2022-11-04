import 'package:firebase_auth_ex/ui/auth_ui/authentication.dart';
import 'package:firebase_auth_ex/ui/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Authentication();
  }
}
