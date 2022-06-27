import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';

import '../bloc/pomodoro_bloc.dart';

class PomodoroTimerPage extends StatefulWidget {
  PomodoroTimerPage({Key? key}) : super(key: key);

  @override
  State<PomodoroTimerPage> createState() => _PomodoroTimerPageState();
}

class _PomodoroTimerPageState extends State<PomodoroTimerPage> {
  bool isStartedPomodoro = false;
  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
              // state.maybeMap(setTimerType: (value) {
              //   print(value.setValue);
              // }, orElse: () {
              //   print('other state');
              // });

              return Text(
                state.map(
                  initial: (value) => '25:00',
                  loading: (s) => 'Loading',
                  loaded: (loaded) => loaded.initialValue.toString(),
                  started: (started) => 'Started',
                  decrement: (value) => parseDuration(value.currentDuration),
                  resetPressed: (value) => parseDuration(value.resetValue),
                  setTimerType: (value) => parseDuration(value.setValue),
                ),
                // '$minutes:$seconds',
                style: const TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          isStartedPomodoro
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      // alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      height: 55,
                      width: 200,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              isStartedPomodoro = false;
                            });
                            BlocProvider.of<PomodoroBloc>(context).add(
                                const PomodoroEvent.resetPressed(
                                    resetValue: Duration(minutes: 25)));
                          },
                          child: Text(
                            'STOP',
                            style:
                                TextStyle(fontSize: 22, color: pomodoroColor),
                          )),
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 35,
                        )),
                  ],
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 55,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isStartedPomodoro = true;
                      });

                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.setTimerType(
                              setValue: Duration(minutes: 25)));
                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.decrement(
                              decrementValue: Duration(seconds: 1)));
                      // isStartedShortBreak = true;
                    },
                    child: Text(
                      'START',
                      style: TextStyle(fontSize: 22, color: pomodoroColor),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
