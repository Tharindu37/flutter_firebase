import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/models/UserModel.dart';
import 'package:flutter_firebase/screens/authentication/login.dart';
import 'package:flutter_firebase/screens/authentication/register.dart';
import 'package:flutter_firebase/screens/wrapper.dart';
import 'package:flutter_firebase/services/auth.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ""),
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Wrapper(),
        home: Wrapper(),
      ),
    );
  }
}
