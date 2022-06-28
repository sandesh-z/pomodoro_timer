import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';

import '../bloc/pomodoro_bloc.dart';

class LongBreakPage extends StatefulWidget {
  void Function() onNextPressed;
  LongBreakPage({Key? key, required this.onNextPressed}) : super(key: key);

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

  _showMyDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Would you like to end break?',
                    style: TextStyle(color: Colors.black)),
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
                    // widget.onNextPressed();
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
                initial: (s) {},
                loading: (s) {},
                loaded: (s) {},
                started: (s) {},
                stop: (s) {},
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
                  stop: (s) => parseDuration(s.timer),
                  decrement: (value) => parseDuration(value.currentDuration),
                  resetPressed: (value) => parseDuration(value.resetValue),
                  setTimerType: (value) => parseDuration(value.setValue),
                ),
                // '$minutes:$seconds',
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          isStartedLongBreak
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
                              isStartedLongBreak = false;
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
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 35,
                            )),
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
                        isStartedLongBreak = true;
                      });
                      if (longBreakStartPressed) {
                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.setTimerType(
                                setValue: Duration(minutes: 10)));
                        setState(() {
                          longBreakStartPressed = false;
                        });
                      }

                      BlocProvider.of<PomodoroBloc>(context).add(
                          const PomodoroEvent.decrement(
                              decrementValue: Duration(seconds: 1)));
                      // isStartedShortBreak = true;
                    },
                    child: Text(
                      'START',
                      style: TextStyle(fontSize: 22, color: longBreakColor),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
