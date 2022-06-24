import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my-globals.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isStarted = false;
  bool isStartedShortBreak = false;
  bool isStartedLongBreak = false;

  Timer? countDownTimer;
  Duration myDuration = Duration(minutes: 25);
  Duration myShortBreakDuration = Duration(minutes: 5);

  @override
  void initState() {
    super.initState();
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countDownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void setCountDownShort() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myShortBreakDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countDownTimer!.cancel();
      } else {
        myShortBreakDuration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer() {
    countDownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void startTimerShort() {
    countDownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDownShort());
  }

  void stopTimer() {
    setState(() => countDownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 25));
  }

  void resetTimerShort() {
    stopTimer();
    setState(() => myShortBreakDuration = Duration(minutes: 25));
  }

  @override
  void dispose() {
    super.dispose();
  }

  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    //for pomodoro
    final minutes =
        myDuration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        myDuration.inSeconds.remainder(60).toString().padLeft(2, '0');

    //for short break
    final breakMinutes =
        myShortBreakDuration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final breakSeconds =
        myShortBreakDuration.inSeconds.remainder(60).toString().padLeft(2, '0');

    return Scaffold(
      backgroundColor: longBreakColor,
      body: Column(
        children: [
          SizedBox(height: 50),
          Card(
            color: longBreakColor,
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                    child: Text(
                  'Pomodoro',
                  style: TextStyle(fontSize: 16, fontFamily: 'ArialRounded'),
                )),
                Tab(
                    child: Text(
                  'Short Break',
                  style: TextStyle(fontSize: 16, fontFamily: 'ArialRounded'),
                )),
                Tab(
                    child: Text(
                  'Long Break',
                  style: TextStyle(fontSize: 16, fontFamily: 'ArialRounded'),
                )),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController,
                // physics: ,
                children: [
                  Container(
                    child: Column(
                      children: [
                        BlocConsumer<PomodoroBloc, PomodoroState>(
                          listener: (context, state) {
                            state.map(
                                initial: (s) {},
                                loading: (s) {},
                                loaded: (s) {},
                                started: (s) {},
                                decrement: (s) {});
                          },
                          builder: (context, state) {
                            return Text(
                              state.map(
                                initial: (value) => '$minutes:$seconds',
                                // value.initialValue.inMinutes.toString(),
                                // "${value.initialValue.inMinutes}:${value.initialValue.inSeconds}",
                                loading: (s) => 'Loading',
                                loaded: (loaded) =>
                                    loaded.initialValue.toString(),
                                started: (started) => 'Started',
                                decrement: (value) =>
                                    parseDuration(value.currentDuration),
                              ),
                              // '$minutes:$seconds',
                              style: TextStyle(
                                fontSize: 75,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          height: 55,
                          width: 200,
                          child: TextButton(
                              onPressed: () {
                                BlocProvider.of<PomodoroBloc>(context).add(
                                    const PomodoroEvent.decrement(
                                        decrementValue: Duration(seconds: 1)));
                                // setState(() {
                                //   if (isStarted) {

                                //     isStarted = false;
                                //      stopTimer();
                                //      resetTimer();
                                //   } else {
                                //     isStarted = true;
                                //      startTimer();
                                //   }
                                // });
                              },
                              child: Text(
                                isStarted ? "STOP" : "START",
                                style: TextStyle(
                                    fontSize: 22, color: shortBreakColor),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '$breakMinutes:$breakSeconds',
                          style: TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          height: 55,
                          width: 200,
                          child: TextButton(
                            onPressed: () {
                              // setState(() {
                              //   if (isStartedShortBreak) {
                              //     // isStartedShortBreak = false;
                              //     // stopTimer();
                              //     // resetTimer()
                              //     // ;
                              //     startTimerShort();
                              //   } else {
                              //     // isStartedShortBreak = true;
                              //     startTimerShort();
                              //   }
                              // });
                            },
                            child: Text(
                              isStartedLongBreak ? "STOP" : "START",
                              style: TextStyle(
                                  fontSize: 22, color: shortBreakColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '10:00',
                          style: TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          height: 55,
                          width: 200,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (isStartedLongBreak) {
                                    isStartedLongBreak = false;
                                    stopTimer();
                                    resetTimer();
                                  } else {
                                    isStartedLongBreak = true;
                                    startTimer();
                                  }
                                });
                              },
                              child: Text(
                                isStartedLongBreak ? "STOP" : "START",
                                style: TextStyle(
                                    fontSize: 22, color: shortBreakColor),
                              )),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
