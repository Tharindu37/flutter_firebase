import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
// ref for the AuthServices class
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SIGN IN")),
      body: ElevatedButton(
        child: const Text("Sign in Anonymously"),
        onPressed: () async {
          dynamic result = await _auth.signInAnonymously();
          print(result);
          if (result == null) {
            print("Error in sign in anon");
          } else {
            print("Signed in anon");
          }
        },
      ),
    );
  }
}
