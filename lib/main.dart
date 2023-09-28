import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/bloc_observer.dart';

import 'package:my_pomodoro_timer/core/themes/themes.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/domain/repositories/pomodoro_timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';
import 'package:my_pomodoro_timer/injection.dart';

import 'features/pomodoro_timer_app/presentation/pages/home_page.dart';

void main() {
  configureDependencies();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PomodoroBloc>(
      create: (_) => PomodoroBloc(
        getIt<PomodoroTimerRepository>(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
