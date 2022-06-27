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
  TabController? tabController;

  Color _color = pomodoroColor;

  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Card(
            color: _color,
            child: TabBar(
              controller: tabController,
              onTap: (id) {
                if (id == 0) {
                  setState(() {
                    _color = pomodoroColor;
                  });
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 25)));
                }
                if (id == 1) {
                  setState(() {
                    _color = shortBreakColor;
                  });
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 5)));
                }
                if (id == 2) {
                  setState(() {
                    _color = longBreakColor;
                  });
                  BlocProvider.of<PomodoroBloc>(context).add(
                      const PomodoroEvent.resetPressed(
                          resetValue: Duration(minutes: 10)));
                }

                tabController?.animateTo(id, curve: Curves.linear);
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
