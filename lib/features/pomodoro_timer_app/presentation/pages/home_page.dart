import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/pages/long_break_page.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/pages/pomodoro_page.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/pages/short_break_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isStartedPomodoro = false;
  bool isStartedShortBreak = false;
  bool isStartedLongBreak = false;

  Timer? countDownTimer;
  Duration myDuration = const Duration(minutes: 25);
  Duration myShortBreakDuration = const Duration(minutes: 5);

  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: longBreakColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Card(
            color: longBreakColor,
            child: TabBar(
              controller: tabController,
              onTap: (id) {
                if (id == 0) {
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 25)));
                }
                if (id == 1) {
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 5)));
                }
                if (id == 2) {
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 10)));
                }
              },
              physics: const NeverScrollableScrollPhysics(),
              indicatorColor: Colors.transparent,
              tabs: const [
                Tab(
                  child: Text(
                    'Pomodoro',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ArialRounded',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Short Break',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ArialRounded',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Long Break',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'ArialRounded',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              // physics: ,
              children: [
                PomodoroTimerPage(),
                ShortBreakPage(),
                LongBreakPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
