import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_pomodoro_timer/core/themes/themes.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/repositories/pomodoro_timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/domain/repositories/pomodoro_timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';
import 'package:my_pomodoro_timer/injection.dart';

import 'features/pomodoro_timer_app/presentation/pages/home_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PomodoroBloc>(
      create: (_) => PomodoroBloc(
        getIt<PomodoroTimerRepository>(),
      )..add(PomodoroEvent.loaded()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        home: HomePage(),
      ),
    );
  }
}
