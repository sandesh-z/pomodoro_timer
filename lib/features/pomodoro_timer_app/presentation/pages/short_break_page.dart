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
  bool isStartedShortBreak = false;
  String parseDuration(Duration duration) {
    var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

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
                    style: TextStyle(color: shortBreakColor)),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Yes'),
                  onPressed: () {
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
                            onPressed: _showMyDialog,
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
                                setValue: Duration(minutes: 5)));
                        setState(() {
                          shortBreakStartPressed = false;
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
