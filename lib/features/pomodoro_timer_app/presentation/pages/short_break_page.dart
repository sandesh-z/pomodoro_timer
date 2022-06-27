import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';

import '../bloc/pomodoro_bloc.dart';

class ShortBreakPage extends StatefulWidget {
  ShortBreakPage({Key? key}) : super(key: key);

  @override
  State<ShortBreakPage> createState() => _ShortBreakPageState();
}

class _ShortBreakPageState extends State<ShortBreakPage> {
  bool isStartedShortBreak = false;
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
                  decrement: (value1) => parseDuration(value1.currentDuration),
                  resetPressed: (value) => parseDuration(value.resetValue),
                  setTimerType: (value1) => parseDuration(value1.setValue),
                ),
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
            child: isStartedShortBreak
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              isStartedShortBreak = false;
                            });
                            BlocProvider.of<PomodoroBloc>(context).add(
                                const PomodoroEvent.resetPressed(
                                    resetValue: Duration(minutes: 5)));
                          },
                          child: const Text(
                            'STOP',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(76, 145, 149, 0.9)),
                          )),
                      const SizedBox(width: 12),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_next,
                              color: Colors.white, size: 22)),
                    ],
                  )
                : TextButton(
                    onPressed: () {
                      setState(() {
                        isStartedShortBreak = true;
                      });

                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.setTimerType(
                              setValue: Duration(minutes: 5)));
                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.decrement(
                              decrementValue: Duration(seconds: 1)));
                      // isStartedShortBreak = true;
                    },
                    child: Text(
                      'START',
                      style: TextStyle(fontSize: 22, color: shortBreakColor),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
