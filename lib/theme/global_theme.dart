import 'package:flutter/material.dart';

const primary = Color.fromRGBO(121, 168, 79, 1);
const secondary = Color.fromRGBO(169, 245, 79, 1);
const principal = Color.fromRGBO(245, 90, 79, 1);
const slave = Color.fromRGBO(45, 168, 168, 1);
const negro = Color.fromRGBO(78, 245, 245, 1);

final lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.amber,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: principal,
    elevation: 0,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.amber,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: primary,
    elevation: 0,
  ),
);
