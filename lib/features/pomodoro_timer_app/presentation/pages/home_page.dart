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

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    // if (timerIsZero) {
    //   setState(() {
    //     tabController?.index = 0;
    //   });
    // }
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _color,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            height: 269,
            // padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.1),
            ),

            child: Column(
              children: [
                const SizedBox(height: 10),
                Card(
                  color: _color,
                  child: TabBar(
                    controller: tabController,
                    padding: EdgeInsets.zero,
                    // labelPadding: EdgeInsets.zero,
                    isScrollable: true,
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
                      PomodoroTimerPage(onNextPressed: () {
                        setState(() {
                          tabController?.index = 1;
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.resetPressed(
                                  resetValue: Duration(minutes: 5)));
                          _color = shortBreakColor;
                        });
                      }),
                      ShortBreakPage(onNextPressed: () {
                        setState(() {
                          tabController?.index = 0;
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.resetPressed(
                                  resetValue: Duration(minutes: 25)));
                          _color = pomodoroColor;
                        });
                      }),
                      LongBreakPage(onNextPressed: () {
                        setState(() {
                          tabController?.index = 0;
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.resetPressed(
                                  resetValue: Duration(minutes: 25)));
                          _color = pomodoroColor;
                        });
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
