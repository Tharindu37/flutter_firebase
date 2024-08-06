import 'package:flutter/material.dart';
import 'package:flutter_firebase/constants/colors.dart';

const TextStyle descriptionStyle =
    TextStyle(fontSize: 15, color: textLight, fontWeight: FontWeight.normal);

const textInputDecoration = InputDecoration(
    hintText: "Email",
    // hintStyle:
    // TextStyle(color: Colors.white, fontSize: 15),

    // fillColor: bgBlack,
    // filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: mainYellow, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: mainYellow, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10))));
