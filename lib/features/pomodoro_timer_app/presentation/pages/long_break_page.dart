import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pomodoro_bloc.dart';

class LongBreakPage extends StatefulWidget {
  LongBreakPage({Key? key}) : super(key: key);

  @override
  State<LongBreakPage> createState() => _LongBreakPageState();
}

class _LongBreakPageState extends State<LongBreakPage> {
  bool isStartedLongBreak = false;

  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              // state.maybeMap(setTimerType: (value) {
              //   print(value.setValue);
              // }, orElse: () {
              //   print('other state');
              // });

              return Text(
                state.map(
                  initial: (value) => '10:00',
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 55,
            width: 200,
            child: isStartedLongBreak
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              isStartedLongBreak = false;
                            });
                            BlocProvider.of<PomodoroBloc>(context).add(
                                const PomodoroEvent.resetPressed(
                                    resetValue: Duration(minutes: 10)));
                          },
                          child: const Text(
                            'STOP',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(76, 145, 149, 0.9)),
                          )),
                      const SizedBox(width: 12),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.pause)),
                    ],
                  )
                : TextButton(
                    onPressed: () {
                      setState(() {
                        isStartedLongBreak = true;
                      });

                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.setTimerType(
                              setValue: Duration(minutes: 10)));
                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.decrement(
                              decrementValue: Duration(seconds: 1)));
                      // isStartedShortBreak = true;
                    },
                    child: const Text(
                      'START',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(76, 145, 149, 0.9)),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
