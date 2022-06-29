import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';

import '../bloc/pomodoro_bloc.dart';

class ShortBreakPage extends StatefulWidget {
  void Function() onNextPressed;
  ShortBreakPage({Key? key, required this.onNextPressed}) : super(key: key);

  @override
  State<ShortBreakPage> createState() => _ShortBreakPageState();
}

class _ShortBreakPageState extends State<ShortBreakPage> {
  bool shortBreakStartPressed = true;
  _showMyDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Would you like to end short break?',
                    style: TextStyle(color: shortBreakColor, fontSize: 16)),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  onPressed: () {
                    BlocProvider.of<PomodoroBloc>(context).add(
                        const PomodoroEvent.decrement(
                            decrementValue: Duration(seconds: 1)));
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: shortBreakColor, fontSize: 16),
                  ),
                  onPressed: () {
                    BlocProvider.of<PomodoroBloc>(context)
                        .add(const PomodoroEvent.stop());
                    widget.onNextPressed();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
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
                stop: (s) {},
                decrement: (s1) {
                  state.whenOrNull(
                      setTimerType: (setValue) => Duration(minutes: 5));
                },
                resetPressed: (s1) {},
                setTimerType: (s1) {},
              );
            },
            builder: (context, state) {
              return Text(
                state.map(
                  initial: (value1) => '05:00',

                  loading: (s1) => '05:00',
                  loaded: (loaded1) => 'Loaded',
                  // loaded.initialValue.toString(),
                  started: (started) => 'Started',
                  stop: (s) => parseDuration(s.timer),
                  decrement: (value1) => parseDuration(value1.currentDuration),
                  resetPressed: (value) => parseDuration(value.resetValue),
                  setTimerType: (value1) => parseDuration(value1.setValue),
                ),
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          isStartedShortBreak
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: SizedBox()),
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
                              isStartedShortBreak = false;
                            });
                            BlocProvider.of<PomodoroBloc>(context)
                                .add(const PomodoroEvent.stop());
                          },
                          child: const Text(
                            'STOP',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(76, 145, 149, 0.9)),
                          )),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            onPressed: () {
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                              _showMyDialog();
                            },
                            icon: const Icon(Icons.skip_next,
                                color: Colors.white, size: 35)),
                      ),
                    ),
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
                        isStartedShortBreak = true;
                      });
                      if (shortBreakStartPressed) {
                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.setTimerType(
                                setValue: Duration(seconds: 5),
                                timerType: TimerType.SHORT_BREAK));

                        setState(() {
                          shortBreakStartPressed = false;
                          if (TimerType.SHORT_BREAK == null) {
                            shortBreakStartPressed = true;
                          }
                        });
                      }

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
