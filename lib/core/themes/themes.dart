import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primarySwatch: Colors.red,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontFamily: 'ProximaNovaAlt',
        fontWeight: FontWeight.w400),
    bodyText2: TextStyle(color: Colors.white, fontSize: 14),
    headline1:
        TextStyle(color: Colors.white, fontSize: 32, fontFamily: 'NoeDisplay'),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  ),
);
