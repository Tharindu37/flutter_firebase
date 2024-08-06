import 'package:flutter/material.dart';
import 'package:flutter_firebase/constants/colors.dart';
import 'package:flutter_firebase/constants/description.dart';
import 'package:flutter_firebase/constants/styles.dart';
import 'package:flutter_firebase/services/auth.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ref for the AuthServices class
  final AuthServices _auth = AuthServices();

  // form key
  final _formKey = GlobalKey<FormState>();

  // email password status
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "REGISTER",
            style: TextStyle(color: bgBlack),
          ),
          elevation: 0,
          backgroundColor: mainYellow,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              children: [
                const Text(
                  description,
                  style: descriptionStyle,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/icons8-male-user-100.png",
                  height: 200,
                )),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // email
                        TextFormField(
                          decoration: textInputDecoration,
                          validator: (value) => value?.isEmpty == true
                              ? "Enter a valid email"
                              : null,
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // password
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: "Password"),
                          validator: (value) => value!.length < 6
                              ? "Enter a valid password"
                              : null,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                        ),
                        // google
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Login with social accounts",
                          style: descriptionStyle,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Signin with google
                          },
                          child: Center(
                              child: Image.asset(
                            "assets/images/icons8-google-50.png",
                          )),
                        ),
                        // register
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an account?",
                                style: descriptionStyle,
                              ),
                              const SizedBox(
                                width: 5,
                                height: 70,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // go to the Register page
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: mainBlue),
                                ),
                              ),
                            ]),
                        // button
                        GestureDetector(
                          onTap: () {
                            // login
                          },
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: bgBlack,
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 2, color: mainYellow)),
                            child: const Center(
                                child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
