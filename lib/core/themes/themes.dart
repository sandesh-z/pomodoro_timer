import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Color.fromRGBO(217, 85, 80, 0.9),
  // textButtonTheme: _kTextButtonTheme,
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
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  ),
);

// final _kTextButtonTheme = TextButtonThemeData(
//   style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
//     if (states.contains(MaterialState.pressed)) {
//       return Colors.blue;
//     }

//     return Colors.white;
//   }), foregroundColor: MaterialStateColor.resolveWith((states) {
//     if (states.contains(MaterialState.pressed)) {
//       return Colors.white;
//     }

//     return Colors.grey;
//   })),
// );
