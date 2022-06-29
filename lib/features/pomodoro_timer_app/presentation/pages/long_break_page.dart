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
                Text('Would you like to end break?',
                    style: TextStyle(color: longBreakColor, fontSize: 16)),
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
                    style: TextStyle(color: longBreakColor, fontSize: 16),
                  ),
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
                  loading: (s) => '10:00',
                  loaded: (loaded) => loaded.initialValue.toString(),
                  started: (started) => 'Started',
                  stop: (s) => parseDuration(s.timer),
                  decrement: (value) => parseDuration(value.currentDuration),
                  resetPressed: (value) => parseDuration(value.currentTime),
                  setTimerType: (value) => value.setTimerType.toString(),
                ),
                // '$minutes:$seconds',
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          BlocBuilder<PomodoroBloc, PomodoroState>(
            builder: (context, state) {
              return state.map(
                decrement: (value) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
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
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: longBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: longBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                setTimerType: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
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
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: longBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: longBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                started: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
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
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: longBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: longBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                loading: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
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
                  );
                },
                loaded: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
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
                  );
                },
                resetPressed: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
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
                  );
                },
                stop: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
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
                  );
                },
                initial: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (longBreakStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
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
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
