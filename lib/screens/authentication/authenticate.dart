import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/authentication/login.dart';
import 'package:flutter_firebase/screens/authentication/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool singinPage = true;

  // toggle pages
  void switchPages() {
    setState(() {
      singinPage = !singinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return singinPage
        ? Sign_In(
            toggle: switchPages,
          )
        : Register(
            toggle: switchPages,
          );
  }
}
