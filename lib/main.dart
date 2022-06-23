import 'package:flutter/material.dart';
import 'package:my_pomodoro_timer/core/themes/themes.dart';

import 'features/pomodoro_timer_app/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
