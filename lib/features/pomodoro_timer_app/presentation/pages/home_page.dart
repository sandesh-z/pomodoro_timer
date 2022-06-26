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
          SizedBox(height: 50),
          Card(
            color: longBreakColor,
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              tabs: const [
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
                              decrement: (s) {},
                              resetPressed: (s) {},
                              setTimerType: (s) {},
                            );
                          },
                          builder: (context, state) {
                            return Text(
                              state.map(
                                initial: (value) => '25:00',
                                // value.initialValue.inMinutes.toString(),
                                // "${value.initialValue.inMinutes}:${value.initialValue.inSeconds}",
                                loading: (s) => 'Loading',
                                loaded: (loaded) =>
                                    loaded.initialValue.toString(),
                                started: (started) => 'Started',
                                decrement: (value) =>
                                    parseDuration(value.currentDuration),
                                resetPressed: (value) =>
                                    parseDuration(value.resetValue),
                                setTimerType: (value) =>
                                    parseDuration(value.setValue),
                              ),
                              // '$minutes:$seconds',
                              style: const TextStyle(
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
                                // isStarted = true;
                                if (isStarted) {
                                  isStarted = false;
                                  BlocProvider.of<PomodoroBloc>(context).add(
                                      const PomodoroEvent.resetPressed(
                                          resetValue: Duration(minutes: 25)));
                                } else {
                                  isStarted = true;
                                  BlocProvider.of<PomodoroBloc>(context).add(
                                      const PomodoroEvent.setTimerType(
                                          setValue: Duration(minutes: 25)));
                                  BlocProvider.of<PomodoroBloc>(context).add(
                                      const PomodoroEvent.decrement(
                                          decrementValue:
                                              Duration(seconds: 1)));
                                }
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
                        BlocConsumer<PomodoroBloc, PomodoroState>(
                          listener: (context, state) {
                            state.map(
                              initial: (s1) {},
                              loading: (s1) {},
                              loaded: (s1) {},
                              started: (s1) {},
                              decrement: (s1) {},
                              resetPressed: (s1) {},
                              setTimerType: (s1) {},
                            );
                          },
                          builder: (context, state) {
                            return Text(
                              state.map(
                                initial: (value1) => '05:00',

                                loading: (s1) => 'Loading',
                                loaded: (loaded1) => 'Loaded',
                                // loaded.initialValue.toString(),
                                started: (started) => 'Started',
                                decrement: (value1) =>
                                    parseDuration(value1.currentDuration),
                                resetPressed: (value) =>
                                    parseDuration(value.resetValue),
                                setTimerType: (value1) =>
                                    parseDuration(value1.setValue),
                              ),
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
                                  const PomodoroEvent.setTimerType(
                                      setValue: Duration(minutes: 5)));
                              BlocProvider.of<PomodoroBloc>(context).add(
                                  const PomodoroEvent.decrement(
                                      decrementValue: Duration(seconds: 1)));
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
                        BlocConsumer<PomodoroBloc, PomodoroState>(
                          listener: (context, state) {
                            state.map(
                              initial: (s1) {},
                              loading: (s1) {},
                              loaded: (s1) {},
                              started: (s1) {},
                              decrement: (s1) {},
                              resetPressed: (s1) {},
                              setTimerType: (s1) {},
                            );
                          },
                          builder: (context, state) {
                            return Text(
                              state.map(
                                initial: (value1) => '10:00',

                                loading: (s1) => 'Loading',
                                loaded: (loaded1) => 'Loaded',
                                // loaded.initialValue.toString(),
                                started: (started) => 'Started',
                                decrement: (value1) =>
                                    parseDuration(value1.currentDuration),
                                resetPressed: (value) =>
                                    parseDuration(value.resetValue),
                                setTimerType: (value1) =>
                                    parseDuration(value1.setValue),
                              ),
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
                                    const PomodoroEvent.setTimerType(
                                        setValue: Duration(minutes: 10)));
                                BlocProvider.of<PomodoroBloc>(context).add(
                                    const PomodoroEvent.decrement(
                                        decrementValue: Duration(seconds: 1)));
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
